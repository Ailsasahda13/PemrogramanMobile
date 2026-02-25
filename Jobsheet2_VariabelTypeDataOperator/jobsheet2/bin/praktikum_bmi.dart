void main() {

  // Data yang dibutuhkan untuk menghitung BMI
  double berat = 45;        // dalam satuan kg
  double tinggi = 1.67;     // dalam satuan meter

  // rumus menghitung BMI
  double bmi = berat / (tinggi * tinggi);

  String kategori;
    if (bmi < 18.5) {
      kategori = "Underweight";
    } 
      else if (bmi < 25) {
        kategori = "Normal/Ideal";
    } 
      else if (bmi < 30) {
        kategori = "Overweight";
    } 
      else {
      kategori = "Obesitas";
    }

      print("===== PROGRAM BMI =====");
      print("Berat: $berat kg");
      print("Tinggi: $tinggi m");
      print("BMI: ${bmi.toStringAsFixed(2)}");
      print("Kategori: $kategori");

  }