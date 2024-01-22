import 'dart:io';

import 'package:sandboxhsi_flutter_level1_quiz/level1_quiz.dart'
    as sandboxhsi_flutter_level1_quiz;

num add(List<num> input) => input[0] + input[1];
num sub(List<num> input) => input[0] - input[1];
num mul(List<num> input) => input[0] * input[1];
String div(List<num> input) =>
    ((input[0] / input[1]) as double).toStringAsFixed(3);
String mod(List<num> input) =>
    input[1] == 0 ? 'Undefined' : (input[0] % input[1]).toString();

int pilihan = 0;
List<int> input = [];

void readInput() {
  while (input.isEmpty) {
    stdout.write('Angka pertama: ');
    try {
      input.add(int.parse(stdin.readLineSync()!));
    } catch (e) {
      continue;
    }
  }

  while (input.length == 1) {
    stdout.write('Angka kedua: ');
    try {
      input.add(int.parse(stdin.readLineSync()!));
    } catch (e) {
      continue;
    }
  }
}

void main(List<String> arguments) {
  print('''
!!!=== Sandbox HSI - Flutter - Level 1 Quiz ===!!!
!!!============= Calculator CLI ===============!!!
1. Penjumlahan
2. Pengurangan
3. Perkalian
4. Pembagian
5. Modulus
  ''');

  while (!(pilihan >= 1 && pilihan <= 5)) {
    stdout.write('Input pilihan operasi: ');

    try {
      pilihan = int.parse(stdin.readLineSync()!);
    } catch (e) {
      continue;
    }

    if (pilihan > 5 || pilihan < 1) {
      print('Pilihan salah! Silakan ulangi input.');
      continue;
    }

    switch (pilihan) {
      case 1:
        try {
          readInput();
          print(
              '\nHasil dari ${input[0]} + ${input[1]} = ${add(input).toString()}');
        } catch (e) {
          break;
        }
        break;

      case 2:
        try {
          readInput();
          print(
              '\nHasil dari ${input[0]} - ${input[1]} = ${sub(input).toString()}');
        } catch (e) {
          break;
        }
        break;

      case 3:
        try {
          readInput();
          print(
              '\nHasil dari ${input[0]} x ${input[1]} = ${mul(input).toString()}');
        } catch (e) {
          break;
        }
        break;

      case 4:
        try {
          readInput();
          print('\nHasil dari ${input[0]} / ${input[1]} = ${div(input)}');
        } catch (e) {
          break;
        }
        break;

      case 5:
        try {
          readInput();
          print('\nHasil dari ${input[0]} % ${input[1]} = ${mod(input)}');
        } catch (e) {
          break;
        }
        break;

      default:
        print('Invalid input.');
    }
  }
}
