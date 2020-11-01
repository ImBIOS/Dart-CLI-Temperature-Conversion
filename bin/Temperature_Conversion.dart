//import dart input output library
import 'dart:io';

//start void main script
void main() {
  //declare array containing 4 different name of temperature name
  var tName = ['Fahrenheit', 'Celcius', 'Reamur', 'Kelvin'];
  
  //print into terminal prompt for user to input the temperature value
  print('Choose type of temperature to convert (in number):');
  
  //logic to print list of the tName in separate line
  for (var i = 1; i <= 4; i++) {
    stdout.write('$i. ');
    stdout.write('${tName[i - 1]}\n');
  }
  
  //choose the number from the list of temperature type
  var typeBefore = num.parse(stdin.readLineSync());
  stdout.write('Temperature value to convert: ');
  
  //choose the ype of temperature for the result of conversion
  var valueBefore = num.parse(stdin.readLineSync());
  print('Choose type of converted temperature (in number):');
  
  //List the item
  for (var i = 1; i <= 4; i++) {
    stdout.write('$i. ');
    stdout.write('${tName[i - 1]}\n');
  }
  var typeResult = num.parse(stdin.readLineSync());
  var fahrenheit, reamur, celsius, kelvin;
  if (typeBefore == 4) {
    kelvin = valueBefore;
    celsius = kelvin - 273;
    fahrenheit = celsius * 9 / 5 + 32;
    reamur = celsius * 4 / 5;
  }
  var suhuHasil = [fahrenheit, celsius, reamur, kelvin];
  print('$nilaiAsal° = ${suhuHasil[typeResult-1].toStringAsFixed(2)}°');
}
