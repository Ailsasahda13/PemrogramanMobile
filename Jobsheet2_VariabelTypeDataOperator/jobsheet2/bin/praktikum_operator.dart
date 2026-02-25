void main() {

  print("===== JENIS OPERATOR =====");

  int a = 25;
  int b = 3;

  // OPERATOR ARITMATIKA
  print("\n-- ARITMATIKA --");
  print("a + b = ${a + b}");
  print("a - b = ${a - b}");
  print("a * b = ${a * b}");
  print("a / b = ${a / b}");
  print("a ~/ b = ${a ~/ b}");
  print("a % b = ${a % b}");

  //  ASSIGNMENT
  print("\n-- ASSIGNMENT --");
  a += 5;
  print("a setelah += 5 : $a");

  a -= 2;
  print("a setelah -= 2 : $a");

  // INCREMENT & DECREMENT
  print("\n-- INCREMENT & DECREMENT --");
  a++;
  print("a setelah increment: $a");

  a--;
  print("a setelah decrement: $a");

  // RELASIONAL
  print("\n-- RELASIONAL --");
  print("a == b : ${a == b}");
  print("a != b : ${a != b}");
  print("a > b  : ${a > b}");
  print("a < b  : ${a < b}");
  print("a >= b : ${a >= b}");
  print("a <= b : ${a <= b}");

  //  LOGIKA
  print("\n-- LOGIKA --");
  bool lulus = true;
  bool rajin = false;

  print("lulus && rajin : ${lulus && rajin}");
  print("lulus || rajin : ${lulus || rajin}");
  print("!lulus : ${!lulus}");

  // TERNARY
  print("\n-- TERNARY --");
  String hasil = a > b ? "a lebih besar" : "a lebih kecil";
  print("Hasil: $hasil");

  //  NULL-AWARE
  print("\n-- NULL AWARE --");
  String? nama;
  print("Nama: ${nama ?? "Ailsa"}");

  // TYPE TEST
  print("\n-- TYPE TEST --");
  print("Apakah a bertipe int? ${a is int}");
  print("Apakah nama bertipe String? ${nama is String}");

}