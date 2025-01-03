# Nama : Vico Winner Sebastian Aritonang
# NPM : 2306219083
# Kelas : B

## Tugas 7 Elemen Dasar Flutter

###  Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

Stateless dan Stateful widget merupakan bagian dari pemrograman aplikasi flutter. stateless widget sendiri sesuai namanya merupakan bagian widget dari flutter yang tidak memiliki state atau perubahan data dalam artian dia sudah dideklarasikan sejak awal run program dan tidak memiliki perubahan atau interaksi selama program berjalan. biasanya stateless widget digunakan untuk elemen yang statis seperti teks atau gambar yang menjadi bacground atau template. sedangkan stateful widget sendiri adalah widget yang memiliki state atau fase seiring berjalannya program. stateful widget bisa didekalarasikan diawal program dan bisa mengalami perubahan sesuai input dari pengguna. hal ini menyebabkan stateful widget memungkinkan pengguna untuk berinteraksi selama program berjalan. contoh dari stateful widget adalah tombol atau animasi lainnya. perbedaan keduanya adalah antara memiliki state atau tidak seperti pada pengertiannya. selain itu, stateless widget lebih efisien dan cenderung lebih ringan dari stateful 
widget karena lebih simpel dan tidak memerlukan pembaruan state.

### Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
dalam program ini saya menggunakan 4 kelas widget yaitu MyApp, MyHomePage, itemcard, dan infocard. semua widget tersebut merupakan jenis stateless widget karena tidak memerlukan animasi atau respon. My app berfungsi untuk mengatur latar belakang aplikasi, saya mewarnainya dengan warna biru, MyApp memuat informasi mengenai nama app saya. selanjutnya adalah my homepage memuat lanjutan dari myApp, my homepage juga memuat informasi mengenai nama, npm, dan kelas, myhomepage memanggil infocard untuk menampilkan informasi dalam card. infoCard merupakan kelas untuk menampilkan informasi pada myhomepage. itemCard memuat tombol dan mengembalikan popcat untuk responnya.

###  Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Dalam pengembangan aplikasi flutter, setState() digunakan untuk stateful widget dimana kita dapat mengatur respon atau hasil yang sesuai setiap interaksi atau state yang terjadi. variabel yang dapat terdampak dari setState() ini seperti counter, tampilan, maupun fungsi asinkronus. dalam proyek awal flutter terdapat tombol dengan setState yang mengembalikan counter++ setiap kali tombol ditekan.

### Jelaskan perbedaan antara const dengan final.

const dan final merupakan keyword yang digunakan untuk membatasi perubahan dalam sebuah variabel tetapi terdapat beberapa perbedaan antara const dan final. objek yang diinisiasi sebagai const tidak akan dapat diubah atau tidak akan pernah berubah. const digunakan untuk menyimpan nilai konstanta seperti phi dan sebagainya. const juga tidak dapat dilakukan operasi atau method untuk mengubahnya, dan tidak bisa diinisiasi ulang. misalnya 
```const list = [1,2,3]```. 
```list.add(4)```
 akan error karena const tidak dapat diubah. sedangkan final masih bisa dilakukan operasi atau method tetapi tidak bisa dilakukan inisiasi ulang. final biasanya digunakan untuk tipe data seperti umur, nama dan lain lain. misalnya 
```final anggota = ["v", "i", "c"]```. 
 bisa dilakukan operasi 
 ```anggota.add("o")```
 tetapi tidak bisa diinisiasi ulang seperti 
 ```anggota = ['o','c']```

### Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
#### Membuat sebuah program flutter baru
untuk melakukan ini saya perlu memastikan apakah flutter sudah terinstall di komputer dengan cara mengetik flutter --version pada terminal. jika sudah ada, masuk ke directory yang ingin digunakan lalu ketik flutter create {nama aplikasi}. 

#### membuat tombol lihat tambah produk dan logout
Saya membuat kelas itemcard pada folder lib tepatnya pada menu.dart, saya membuat tampilan tombol dalam grid menggunakan GridView.count dimana setiap item seperti lihat tambah dan logout bisa ditambahkan di setiap itemcard. 

#### membuat tombol memanggil popcat
saya menggunakan fungsi material dan InkWell untuk memberikan tampilan dan respon untuk setiap tombol. terdapat fungsi ontap pada InkWell untuk menangani klik pada tombol



## Tugas 8 Flutter Navigation, Layouts, Forms, and Input Elements

### Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

pada program flutter (dart), const digunakan untuk elemen elemen yang bersifat statis atau tidak berubah di state manapun. const akan selalu ada pada tempatnya dan akan bernilai sama dari awal sampai akhir. keuntungan dari penggunaan const adalah penghematan memory karena dia tidak membutuhkan perkembangan atau perubahan. sebaiknya kita menggunakan const untuk variabel yang tetap misalnya kolom padding dan sebagainya. hal ini karena beberapa kolom atau padding tidak akan berubah nilainya sampai akhir program (seperti pada PesananForm saya).

 ### Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

 Column dan row merupakan pengaturan layout widget pada flutter. Column akan mengatur lokasi secara vertikal sedangkan row akan mengatur lokasi secara horizontal. dalam program saya, saya menggunakan row untuk mengatur tombol sejajar pada menu (tambah, lihat, dan logout). sedangkan untuk column sendiri saya menggunakannya pada input form pada pesanan_form.

 ### Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

 dalam pengerjaan tugas 8 ini, saya hanya menggunakan textformfield untuk namaPesanan, keterangan, dan jumlahPesanan karena menurut saya itu yang paling sederhana. saya menggunakan filter untuk membatasi input seperti hanya boleh huruf, tidak boleh negatif dan sebagainya. dalam flutter sendiri ada beberapa input yang bisa digunakan seperti checkbox untuk memilih ya atau tidak, radio untuk memilih beberapa kategori, slider untuk memilih nilai pada rentang tertentu dalam slider, dan sebagainya

 ### Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

 pada aplikasi flutter saya, saya mengatur tema yang konsisten. saya mendeklarasikan Warna utama dan warna sekunder yang akan digunakan sebagai tema aplikasi saya dengan code

Saya menggunakan 
 ```
 ColorScheme.fromSwatch()
 ``` 
untuk mengatur primarySwatch dengan warna Colors.lightBlue.
Warna sekunder diatur melalui 
```
.copyWith(secondary: Colors.lightBlueAccent[300]),
```
 yang memberikan aksen atau warna tambahan dalam aplikasi.

Di AppBar pada menu.dart, saya menggunakan 
```
    Theme.of(context).colorScheme.primary
```
untuk warna latar belakang sehingga konsisten dengan warna utama.

