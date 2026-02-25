import 'dart:io';

void main() {
  bool isRunning = true;

  while (isRunning) {
    print("\n================================");
    print("     APLIKASI KONVERSI UNIT");
    print("================================");
    print("1. Konversi Panjang");
    print("2. Konversi Massa");
    print("3. Konversi Volume");
    print("4. Konversi Suhu");
    print("0. EXIT PROGRAM");
    print("================================");
    stdout.write("Pilih menu: ");

    String? pilihan = stdin.readLineSync()?.trim();

    switch (pilihan) {
      case '1':
        konversiUmum("PANJANG", panjangUnits);
        break;
      case '2':
        konversiUmum("MASSA", massaUnits, tidakBolehNegatif: true);
        break;
      case '3':
        konversiUmum("VOLUME", volumeUnits, tidakBolehNegatif: true);
        break;
      case '4':
        konversiSuhu();
        break;
      case '0':
        stdout.write("Yakin ingin keluar? (y/n): ");
        String? konfirmasi = stdin.readLineSync()?.trim().toLowerCase();
        if (konfirmasi == 'y') {
          print("Program selesai. Terima kasih");
          isRunning = false;
        }
        break;
      default:
        print("Menu tidak valid!");
    }
  }
}

// MAP DATA
final Map<String, double> panjangUnits = {
  "mm": 0.001,
  "cm": 0.01,
  "m": 1,
  "km": 1000,
  "inch": 0.0254,
};

final Map<String, double> massaUnits = {
  "mg": 0.000001,
  "g": 0.001,
  "kg": 1,
  "ton": 1000,
  "lb": 0.453592,
};

final Map<String, double> volumeUnits = {
  "ml": 0.001,
  "l": 1,
  "m3": 1000,
  "gal": 3.78541,
  "cup": 0.24,
};

// KONVERSI UMUM
void konversiUmum(String kategori, Map<String, double> units,
    {bool tidakBolehNegatif = false}) {
  print("\n--- KONVERSI $kategori ---");

  var keys = units.keys.toList();

  for (int i = 0; i < keys.length; i++) {
    print("${i + 1}. ${keys[i]}");
  }

  stdout.write("Pilih satuan asal: ");
  int? asalIndex = int.tryParse(stdin.readLineSync() ?? "");

  stdout.write("Pilih satuan tujuan: ");
  int? tujuanIndex = int.tryParse(stdin.readLineSync() ?? "");

  if (asalIndex == null ||
      tujuanIndex == null ||
      asalIndex < 1 ||
      tujuanIndex < 1 ||
      asalIndex > keys.length ||
      tujuanIndex > keys.length) {
    print("Pilihan satuan tidak valid!");
    return;
  }

  stdout.write("Masukkan nilai: ");
  double? nilai = double.tryParse(stdin.readLineSync() ?? "");

  if (nilai == null) {
    print("Input harus angka!");
    return;
  }

  if (tidakBolehNegatif && nilai < 0) {
    print("Nilai tidak boleh negatif!");
    return;
  }

  String asal = keys[asalIndex - 1];
  String tujuan = keys[tujuanIndex - 1];

  double nilaiDasar = nilai * units[asal]!;
  double hasil = nilaiDasar / units[tujuan]!;

  print("\nHASIL:");
  print("${nilai.toStringAsFixed(2)} $asal = ${hasil.toStringAsFixed(4)} $tujuan");
}

// KONVERSI SUHU
void konversiSuhu() {
  print("\n--- KONVERSI SUHU ---");
  print("1. Celsius");
  print("2. Fahrenheit");
  print("3. Kelvin");
  print("4. Reamur");
  print("5. Rankine");

  stdout.write("Pilih asal: ");
  int? asal = int.tryParse(stdin.readLineSync() ?? "");

  stdout.write("Pilih tujuan: ");
  int? tujuan = int.tryParse(stdin.readLineSync() ?? "");

  stdout.write("Masukkan nilai: ");
  double? nilai = double.tryParse(stdin.readLineSync() ?? "");

  if (asal == null || tujuan == null || nilai == null) {
    print("Input tidak valid!");
    return;
  }

  double celsius;

  switch (asal) {
    case 1:
      celsius = nilai;
      break;
    case 2:
      celsius = (nilai - 32) * 5 / 9;
      break;
    case 3:
      celsius = nilai - 273.15;
      break;
    case 4:
      celsius = nilai * 5 / 4;
      break;
    case 5:
      celsius = (nilai - 491.67) * 5 / 9;
      break;
    default:
      print("Satuan asal tidak valid!");
      return;
  }

  double hasil;

  switch (tujuan) {
    case 1:
      hasil = celsius;
      break;
    case 2:
      hasil = (celsius * 9 / 5) + 32;
      break;
    case 3:
      hasil = celsius + 273.15;
      break;
    case 4:
      hasil = celsius * 4 / 5;
      break;
    case 5:
      hasil = (celsius + 273.15) * 9 / 5;
      break;
    default:
      print("Satuan tujuan tidak valid!");
      return;
  }

  print("\nHASIL:");
  print("${nilai.toStringAsFixed(2)} -> ${hasil.toStringAsFixed(2)}");
}