double hitungTotal(List<double> harga) {
  double total = 0;

  for (double item in harga) {
    total += item;
  }

  return total;
}

void main() {

  String nama = "Ailsa Sahda Garizah"; 
  String nim = "244107060006";

  double nilaiUnikNIM = double.parse(nim.substring(nim.length - 3));

  List<double> hargaBarang = [
    150000.0,
    75500.0,
    13300.0,
    4500.0,
    25000.0
  ];

  hargaBarang.add(nilaiUnikNIM);

  String? pesanDiskon;
  double totalAwal = hitungTotal(hargaBarang);
  double diskon = 0;

  if (totalAwal > 200000) {
    diskon = totalAwal * 0.10;
    pesanDiskon = "Congratulations!! Anda mendapatkan diskon sebesar 10%";
  } 
  else if (totalAwal >= 100000 && totalAwal <= 200000) {
    diskon = totalAwal * 0.05;
    pesanDiskon = "Congratulations!! Anda mendapatkan diskon sebesar 5%";
  } 
  else {
    diskon = 0;
    pesanDiskon = "Tidak ada diskon";
  }

  double totalAkhir = totalAwal - diskon;

  print("===== SISTEM PENGELOLA DISKON TOKO =====");
  print("Nama: $nama");
  print("NIM: $nim");
  print("-----------------------------");
  print("Daftar Harga Barang: $hargaBarang");
  print("Total Awal: ${totalAwal.toStringAsFixed(2)}");
  print("Diskon: ${diskon.toStringAsFixed(2)}");
  print("Keterangan: ${pesanDiskon!}");
  print("Total Akhir: ${totalAkhir.toStringAsFixed(2)}");
}