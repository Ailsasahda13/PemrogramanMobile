void main() {

  double rupiah = 280000;

  Map<String, double> kurs = {
    "USD": 16000,   // 1 USD = 16.000 Rupiah
    "EUR": 17500,   // 1 EUR = 17.500 Rupiah
    "JPY": 110      // 1 JPY = 110 Rupiah
  };

  print("===== KONVERSI MATA UANG =====");
  print("Jumlah Rupiah: Rp${rupiah.toStringAsFixed(0)}");

  kurs.forEach((mataUang, nilaiKurs) {
    double hasil = rupiah / nilaiKurs;
    print("$mataUang: ${hasil.toStringAsFixed(2)}");
  });

}