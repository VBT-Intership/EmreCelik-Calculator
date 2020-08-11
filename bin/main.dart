import 'dart:io';
import 'calculator.dart';
import 'package:math_expressions/math_expressions.dart';

void main(List<String> arguments) {
  // print('Yapmak İstediğiniz İşlemi Yazınız (4 + 3)');  // v1.0.0
  // final process = stdin.readLineSync();
  // if (inputCheck(process)) {
  //   print('Sonuç: ${judgment(process)}');
  // } else {
  //   print('Hatalı Giriş Yaptınız...');
  // }

  try {
    print('Yapmak İstediğiniz İşlemi Yazınız (1 + 2 - 3 * 4 / 5)');
    print(Parser()
        .parse(stdin.readLineSync())
        .evaluate(EvaluationType.REAL, ContextModel()));
  } catch (e) {
    print('Hatalı Giriş Yaptınız...');
  }
}
