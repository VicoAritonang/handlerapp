import 'package:flutter/material.dart';
import 'package:handlerapp/models/buat_pesanan.dart';
import 'package:handlerapp/screens/menu.dart';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';  
import 'package:provider/provider.dart';
import 'package:handlerapp/screens/register.dart';
import 'package:handlerapp/widgets/drawer.dart';

class PesananPage extends StatefulWidget {
  const PesananPage({super.key});

  @override
  State<PesananPage> createState() => _PesananPageState();
}

class _PesananPageState extends State<PesananPage> {
  Future<List<BuatPesanan>> fetchPesanan(CookieRequest request) async {
  final response = await request.get('http://127.0.0.1:8000/json/');

  List<BuatPesanan> listPesanan = [];
      for (var d in response) {
        if (d != null) {
          listPesanan.add(BuatPesanan.fromJson(d));
        }
      }
      return listPesanan;
    }


  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Pesanan: '),
      ),
      drawer: const LeftDrawer(),
      body: FutureBuilder(
        future: fetchPesanan(request),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            if (!snapshot.hasData) {
              return const Column(
                children: [
                  Text(
                    'Belum ada pesanan yang dibuat',
                    style: TextStyle(fontSize: 20, color: Color(0xff59A5D8)),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${snapshot.data![index].fields.namaPesanan}",
                        style: const TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.keterangan}"),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.jumlahPesanan}"),
                      const SizedBox(height: 10),
                      Text("${snapshot.data![index].fields.waktuPemesanan}")
                    ],
                  ),
                ),
              );
            }
          }
        },
      ),
    );
  }
}