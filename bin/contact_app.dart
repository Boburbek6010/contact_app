import 'dart:io';

import 'moduls/contact_class.dart';

Future<void> main() async {
  Contact contact = Contact();

  print('\n\n\n\t\t\tWelcome to our phone App\n\n\n');

  bool bl = true;
  do {
    print('1.Qo\'ng\'iroq Qilish');
    print('2.Delete qilish');
    print('3.Sms Yozish');
    print('4.Dasturdan chiqish');

    String choice = stdin.readLineSync()!;
    if (choice.startsWith('1')) {
      contact.printing();
      await contact.call();
    } else if (choice.startsWith('2')) {
      while (bl) {
        try {
          contact.printing();
          contact.delete();
          bl = false;
        } catch (e) {}
      }
    } else if (choice.startsWith('3')) {
      contact.printing();
      print('\nE\'tibor bering bitta sms narxi 10 so\'m \n\n');
      print('Ismingizni kiritng => ');
      String name = stdin.readLineSync()!;
      contact.message(name);
    } else {
      return;
    }
  }while(true);

}






