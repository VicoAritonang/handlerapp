class BuatPesanan {
  String model;
  String pk;
  Fields fields;

  BuatPesanan({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory BuatPesanan.fromJson(Map<String, dynamic> json) => BuatPesanan(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
      );

  Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
      };
}

class Fields {
  int user;
  String namaPesanan;
  DateTime waktuPemesanan;
  String keterangan;
  int jumlahPesanan;

  Fields({
    required this.user,
    required this.namaPesanan,
    required this.waktuPemesanan,
    required this.keterangan,
    required this.jumlahPesanan,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        namaPesanan: json["nama_pesanan"],
        waktuPemesanan: DateTime.parse(json["waktu_pemesanan"]),
        keterangan: json["keterangan"],
        jumlahPesanan: json["jumlah_pesanan"],
      );

  Map<String, dynamic> toJson() => {
        "user": user,
        "nama_pesanan": namaPesanan,
        "waktu_pemesanan": waktuPemesanan.toIso8601String(),
        "keterangan": keterangan,
        "jumlah_pesanan": jumlahPesanan,
      };
}
