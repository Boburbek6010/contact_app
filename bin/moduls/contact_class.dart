import 'dart:async';
import 'dart:io';

class Contact {
String del = '0';
List<String> conList = [
  '',
  'Xurshidjon',
  'Asliddin',
  'Muhammadjon',
  'Boburbek',
  'Muzaffar',
  'Abdulaziz',
  'Islam',
  'Nasibullo',
  'Mumin',
  'Imomboy',
  'Yoqub',
  'Abdulazim',
  'Sunnatillo',
  'Raxmiddin',
  'Fayzullo',
  'Jamshid'
];

List<String> duplicate = [];
List<String> forNumDublicate = [];
List<String> numList = [
  '',
  '+998911510987',
  '+998916283680',
  '+998930069001',
  '+998950496010',
  '+998908613933',
  '+998943576294',
  '+998901112233',
  '+998944170531',
  '+998901112233',
  '+998901112233',
  '+998990450117',
  '+998990330919',
  '+998908716773',
  '+998888787275',
  '+998901151319',
  '+998974314044',
];


  void printing() {
    print('\t\t\t\t-----------------');
    print('\t\t\t\t|\tContacts    |');
    print('\t\t\t\t-----------------');
    for (int i = 1; i < conList.length; i++) {
      print('\t\t\t\t${i.toString() + '.' + conList[i]}');
      print('\t\t\t\t-----------------');
    }
  }


  Future<void> call() async {
    List list = [];
    print('Kimga qo\'ng\'roq qilmoqchisiz?');
    String toWhom = stdin.readLineSync()!;
    int n = int.parse(toWhom);
    String stopCalling;
    if (n >= conList.length) {
      print('Bunday contact mavjud emas');
    } else {
      do {
        stdout.write('\n\n\t\t\t\t\t   ');
        final letters = sendAlphabets();
        await for (String item in letters) {
          stdout.write(item);
        }
        print('\n\t\t\t\t---------------------');
        if (n != 0) {
          print('\t\t\t\t|\t\t 👨         |\n  \t\t\t\t\t  ${conList[n].replaceRange(0, 0, '')}');
        }
        print('\n\t\t\t\t|\t${numList[n]}   |');
        stdout.writeln('\n\t\t\t\t| 🎤     ⌨️   🔊  |\n');
        stdout.writeln('\t\t\t\t  💾     📞️+    ⏺️');
        stdout.write('\n                      --------              ');
        print('\n\t\t\t\t|\t  |  ☎️|     | ');
        print('\t\t\t\t---------------------');
        final handler = counter();
        await for (String item in handler) {
          list.add(item);
          stdout.write("$list,");
          list.clear();
        }
        stopCalling = stdin.readLineSync()!;
        if (stopCalling == 'stop'.toUpperCase() ||
            stopCalling == 'stop'.toLowerCase()) {
          print('\n\n\t\t\t\tSuxbat Yakunlandi\n\n\n\n');
          break;
        }
        print('press STOP to end');
      } while (true);
    }
  }


  void delete() {
    print('Sizda ${conList.length-1} ta Contact bor');
    do {
      print('Kimni listdan ochirmoqchisiz? ');
      del = stdin.readLineSync()!;
      if (del == 'stop') break;
      conList.removeAt(int.parse(del));
      numList.removeAt(int.parse(del));
      duplicate = conList;
      forNumDublicate = (numList);
      conList = [];
      numList = [];
      conList = (duplicate);
      numList = (forNumDublicate);
      printing();
      print('Sizda ${conList.length-1} ta kontact qoldi');
    } while (true);
  }

  void message(String name) {
    if (name.length > 2 && name.isNotEmpty) {
      for (int i = 0; i < conList.length; i++) {
        if (name.contains(conList[i]) || name.contains(conList[i].toLowerCase()) || name.contains(conList[i].toUpperCase())) {
          print('$name qancha pulingiz bor? ');
          int summa = int.parse(stdin.readLineSync()!);
          String toWhom = '';
          print('\n                      Kimga sms xabar yozmoqchisiz? ');
          stdout.write('                      ');
          toWhom = stdin.readLineSync()!;
          for (int i = 0; i < conList.length; i++) {
            if (toWhom.contains(conList[i]) || toWhom.contains(conList[i].toLowerCase()) || toWhom.contains(conList[i].toUpperCase())) {
              String lastMsg = '';
              String secLastMsg = '';
              while (!(lastMsg == 'Ok' ||
                  lastMsg == 'ok' ||
                  lastMsg == 'Mayli' ||
                  lastMsg == 'mayli' ||
                  lastMsg == 'xayr' ||
                  lastMsg == 'Xayr' ||
                  lastMsg == 'Bopti' ||
                  lastMsg == 'bopti' ||
                  lastMsg == 'bo\'pti' ||
                  lastMsg == 'Bo\'pti' ||
                  secLastMsg == 'Ok' ||
                  secLastMsg == 'ok' ||
                  secLastMsg == 'Mayli' ||
                  secLastMsg == 'mayli' ||
                  secLastMsg == 'xayr' ||
                  secLastMsg == 'Xayr' ||
                  secLastMsg == 'Bopti' ||
                  secLastMsg == 'bopti' ||
                  secLastMsg == 'bo\'pti' ||
                  secLastMsg == 'Bo\'pti')) {
                if (summa <= 0) {
                  print(
                      '\n\n\n       $name sizda yetarli mablag\' mavjud emas\n\n\n');
                  return;
                }
                summa -= 10;
                print('\n$name is typing...');
                lastMsg = stdin.readLineSync()!;
                stdout.write('    ${DateTime.now().hour}:');
                stdout.write(DateTime.now().minute);
                if (lastMsg == 'Ok' ||
                    lastMsg == 'ok' ||
                    lastMsg == 'Mayli' ||
                    lastMsg == 'mayli' ||
                    lastMsg == 'xayr' ||
                    lastMsg == 'Xayr' ||
                    lastMsg == 'Bopti' ||
                    lastMsg == 'bopti' ||
                    lastMsg == 'bo\'pti' ||
                    lastMsg == 'Bo\'pti') {
                  break;
                }
                print('\n                              $toWhom is typing...');
                stdout.write('                             => ');
                secLastMsg = stdin.readLineSync()!;
                stdout.write(
                    '                                   ${DateTime.now().hour}:');
                stdout.write(DateTime.now().minute);
              }
              print('\n\n                    Suxbat yakunlandi!');
              return;
            }
          }
          print('Bunday user contactda mavjud emas');
          return;
        }
      }
      print('Ism Contactda mavjud emas');
    } else {
      print('Bunday ism bo\'lmaydi');
    }
  }

}

Stream<String> sendAlphabets() async* {
  String letter = 'Calling...';
  int i = 0;
  while (i < letter.length) {
    await Future.delayed(Duration(milliseconds: 400));
    yield letter[i];
    i++;
  }
}

Stream counter() async* {
  int minute = 0;
  int sekund = 0;
  while (true) {
    await Future.delayed(Duration(seconds: 1));
    yield ('$minute:$sekund');
    sekund++;
    if (sekund == 10) {
      break;
    }
  }
}
