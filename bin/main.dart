import 'dart:io';
import 'calculator.dart';

void main(List<String> arguments) {
  print('Yapmak İstediğiniz İşlemi Yazınız (4 + 3)');
  final process = stdin.readLineSync();
  if (inputCheck(process)) {
    print('Sonuç: ${judgment(process)}');
  } else {
    print('Hatalı Giriş Yaptınız...');
  }
}
