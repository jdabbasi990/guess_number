import 'dart:io';
import 'dart:math';

class Numberlogic {
  int _random = Random().nextInt(100);

  void play() {
    print('Please guess the number between 0  -  100');
    while (true) {
      int? answer;

      while (answer == null) {
        try {
          answer = int.parse(stdin.readLineSync()!);
        } on FormatException {
          print('Please enter a valid number between 0 - 100');
        }
      }
      if (answer == _random) {
        print('You guessed it!');
      } else if (answer > _random) {
        print('Too High');
      } else if (answer < _random) {
        print('Too low');
      } else {
        print('Wrong input');
      }
    }
  }
}
