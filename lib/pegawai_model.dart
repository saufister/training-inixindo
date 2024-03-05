class Pegawai {
  List<Personal>? pegawai;
  Pegawai({this.pegawai});
  //factory, mengijikan suatu constructor mengakses/memanggil konstruktor yang lain
  factory Pegawai.fromJSON(Map<String, dynamic> json) {
    if (json['pegawai'] != null) {
      var personals = json['pegawai'].forEach((p) => Personal.fromJSON(p));
      return Pegawai(pegawai: personals);
    } else {
      return Pegawai(pegawai: null);
    }
  }
}

class Personal {
  int? id;
  String? nama;
  String? tanggal_lahir;
  String? jenis_kelamin;

  Personal({this.id, this.nama, this.tanggal_lahir, this.jenis_kelamin});

  factory Personal.fromJSON(Map<String, dynamic> data) {
    return Personal(
        id: data['id'],
        nama: data["nama"],
        tanggal_lahir: data['tanggal_lahir'],
        jenis_kelamin: data['jenis_kelamin']);
  }
}
