void main() { 

    double hargaBarang = 120000;  
    int jumlahBeli = 3;  
    String kodeMember = 'GOLD';    
    double total = hargaBarang * jumlahBeli;  
    double diskonPersen = 0;  
      if (kodeMember == 'GOLD') diskonPersen = 0.1;  
      else if (kodeMember == 'SILVER') diskonPersen = 0.05;    
    double diskonTambahan = total > 300000 ? 0.05 : 0;  
    double totalDiskon = total * (diskonPersen + diskonTambahan);  
    double hargaAkhir = total - totalDiskon; 

//print   
  print('Total: Rp${total.toStringAsFixed(0)}');
  print('Diskon: Rp${totalDiskon.toStringAsFixed(1)}');
  print('Akhir: Rp${hargaAkhir.toStringAsFixed(1)}');

}
