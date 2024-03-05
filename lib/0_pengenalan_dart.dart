//deklarasi variabel, inisialisasi
String instansi = "PT. INIXINDO JOGJA";
int angka = 10;
// int nomor; //error, haris di inisialisasi

// Null Safety
// tipe data nullable, kemampuan variabel untuk dapat diisi null
String? teks;
String? buku = null;
// Deklarasi variabel, dengan sintaks : var
// Tipe data pada 'var' akan secara otomatis disesuaikan
// ketika pertama kali variable diberikan inisialisasi nilai
var benda = 'penggaris';
// teks = 'halo'; // error, tidak bisa menjalankan selain deklarasi

// Array = List, seperti PHP non-asosiatif
List<String> nama = [
  'badu',
  'ani' /*,1*/
];
List<dynamic> orang = [
  'roni',
  ['alin', 18, 'jogja'],
  62814591723817
];
// Map, menyimpan data dengan format, Key : Value, seperti PHP asosiatif
// konversi dari JSON data lebih cocok dengan tipe data Map
Map<dynamic, dynamic> yono = {'nama': "yono", "no_hp": [628131576884,6281239319]};

class Mobil {
  // teks = 'halo';
  String warna = 'hitam';
}

// Dirapikan CTRL + ALT + L , (Menu) Code > Reformat Code
class Tayota extends Mobil {
  // constructor :
  // Method yang terpanggil saat sebuah object terbentuk
  // Menginisialisasi nilai,
  String? bbm;

  Tayota() {}

  // Polimorfisme
  Tayota.setWarna(warna) {
    this.warna = warna;
  }

  Tayota.setKondisi(this.bbm);

  Tayota.setKondisi2({this.bbm});

  // method : void (tanpa return value), non-void (menghasilkan return value),
  // dynamic (menghasilkan return dynamic)
  void cetak(teks) {
    print('FLUTTER' + teks);
  }
}

/*int*/
perkalian({n, m}) {
  var hasil = n * m;
  return hasil;
}

void main() {
  print("Welcome to Inixindo Jogja Trining");
  print(instansi);
  print(angka);
  print(angka + 10);
  String org;
  // print(org); // error, nilai variabel org harus ditetapkan
  // benda = 10; // error, tidak dapat mengubah tipe data int menjadi string
  print(benda);

  const int nomor = 10; // const meningkatkan efisiensi memory,
  print(nomor);
  Mobil kejang = Mobil(); // new Mobil();
  print(kejang.warna);
  var mobilKu = Tayota.setKondisi('Petrol');
  var mobilKu2 = Tayota.setKondisi2(bbm: 'Petrol');
  print(mobilKu.bbm);
  print(perkalian(n: 7, m: 19));
  print(nama[0]);
  print(yono['no_hp']);
  print("TRAINING".runtimeType); // cek tipe data
  print("TRAINING".runtimeType == String); // membandingkan tipe data
  double c = 10.1;
  print(c is double); // membandingkan tipe data
}
