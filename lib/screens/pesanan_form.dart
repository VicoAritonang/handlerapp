import 'package:flutter/material.dart';
import 'package:handlerapp/widgets/drawer.dart';
import 'package:handlerapp/screens/menu.dart';

class PesananEntryFormPage extends StatefulWidget {
  const PesananEntryFormPage({super.key});

  @override
  State<PesananEntryFormPage> createState() => _PesananEntryFormPageState();
}

class _PesananEntryFormPageState extends State<PesananEntryFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _namaPesanan = "";
  String _keterangan = "";
  int _jumlahPesanan = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Silahkan Masukkan Pesanan Anda',
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Nama Pesanan",
                    labelText: "Nama Pesanan",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _namaPesanan = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Nama pesanan tidak boleh kosong!";
                    }
                    if (RegExp(r'[0-9]').hasMatch(value)) {
                      return "Nama pesanan tidak boleh mengandung angka!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Keterangan",
                    labelText: "Keterangan",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  maxLength: 300,
                  onChanged: (String? value) {
                    setState(() {
                      _keterangan = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Keterangan tidak boleh kosong!";
                    }
                    if (value.length > 300) {
                      return "Keterangan tidak boleh lebih dari 300 karakter!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Jumlah pesanan",
                    labelText: "Jumlah pesanan",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (String? value) {
                    setState(() {
                      _jumlahPesanan = int.tryParse(value!) ?? 0;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Jumlah pesanan tidak boleh kosong!";
                    }
                    int? jumlah = int.tryParse(value);
                    if (jumlah == null) {
                      return "Jumlah pesanan harus berupa angka!";
                    }
                    if (jumlah < 0) {
                      return "Jumlah pesanan tidak boleh negatif!";
                    }
                    return null;
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.primary),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Pesanan berhasil dibuat'),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Nama Pesanan: $_namaPesanan'),
                                    Text('Keterangan: $_keterangan'),
                                    Text('Jumlah Pesanan: $_jumlahPesanan'),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    _formKey.currentState!.reset();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
