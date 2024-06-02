import 'dart:io';
import 'dart:math';

class Numberlogic {
  int _random = Random().nextInt(100);

  void play() {
    while (true) {
      print('Please guess the number between 0  -  100');
      int answer = int.parse(stdin.readLineSync()!);

      if (answer == _random) {
        print('You guessed it!');
        clearConsole();
      } else if (answer > _random) {
        print('Too High');
        clearConsole();
      } else if (answer < _random) {
        print('Too low');
        clearConsole();
      } else {
        print('Wrong input');
        clearConsole();
      }
    }
  }

  void clearConsole() {
    Process.runSync("cls", [], runInShell: true);
  }
}
