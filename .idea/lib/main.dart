import 'math_file.dart';
import 'string_file.dart';
import 'user.dart';

enum Colors {
  red,
  green,
  yellow,
  blue,
  black,
}

void main() {
  My_Math no = My_Math();
  StringModifier str = StringModifier();

  // задача №1 - НОД и НОК
  print(no.find_nod(25, 45));
  print(no.find_nok(25, 45));
  // задача №2 - преобразование
  for (int i = 0; i < 17; i++) print('$i - ${no.dec_2_bin(i)}');
  // обратно
  print(no.bin_2_dec('000000001'));
  // найти числа в строке и вернуть список
  print(str.get_numbers_list('ffdfd 1 2 3 dadfdasf 3 fsdfsd 4 5 ello5'));
  // количество слов в списке
  print(str.getWordsQuantity(["Алла", "Игорь", "Вика", "Алла", "Игорь"]));
  // найти строковые значения чисел и вернуть список int
  print(str
      .getStringNumbers(["one", "two", "three", "cat", "dog", "five", "two"]));
  // трехмерное пространство
  print(Point.oneVector().distanceTo(Point.zeroPoint()));
  print(Point(5, 3, 10).distanceTo(Point(-3, 7, 1)));
  // корень n-й степени из числа
  print((10).rootN(2));
  // пользователи
  UserManager manager = UserManager();
  manager.printUsers();
  manager.addUser(AdminUser("manamana@email.ru"));
  manager.addUser(AdminUser("manamanager@email.com"));
  manager.addUser(GeneralUser("mandrey@email.ru"));

  manager.printUsers();
  manager.deleteUser("manamana@email.ru");
  manager.printUsers();
  manager.deleteUser("mandrey@email.ru");
  manager.printUsers();
}
