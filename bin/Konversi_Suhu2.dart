import 'dart:io';

void main() {
  var suhuAwal = ['Fahrenheit', 'Celsius', 'Reamur', 'Kelvin'];
  print('Pilih jenis suhu asal (Angka):');
  for (var i = 1; i <= 4; i++) {
    stdout.write('$i. ');
    stdout.write('${suhuAwal[i - 1]}\n');
  }
  var jenisAsal = num.parse(stdin.readLineSync());
  stdout.write('Nilai suhu asal: ');
  var nilaiAsal = num.parse(stdin.readLineSync());
  print('Pilih jenis suhu hasil (Angka):');
  for (var i = 1; i <= 4; i++) {
    stdout.write('$i. ');
    stdout.write('${suhuAwal[i - 1]}\n');
  }
  var jenisHasil = num.parse(stdin.readLineSync());
  var fahrenheit, reamur, celsius, kelvin;
  if (jenisAsal == 4) {
    kelvin = nilaiAsal;
    celsius = kelvin - 273;
    fahrenheit = celsius * 9 / 5 + 32;
    reamur = celsius * 4 / 5;
  }
  var suhuHasil = [fahrenheit, celsius, reamur, kelvin];
  print('$nilaiAsal° = ${suhuHasil[jenisHasil-1].toStringAsFixed(2)}°');
}