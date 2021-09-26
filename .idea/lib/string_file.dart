extension IntX on String {
  int intByString() {
    switch (this.toLowerCase()) {
      case "one":
        return 1;
      case "two":
        return 2;
      case "three":
        return 3;
      case "four":
        return 4;
      case "five":
        return 5;
      case "six":
        return 6;
      case "seven":
        return 7;
      case "egiht":
        return 8;
      case "nine":
        return 9;
      case "zero":
        return 0;
      default:
        return null;
    }
  }
}

class StringModifier {
  List<int> getNumbersList(String par) {
    List<int> tmp = List();
    int pos = 0;
    int posTo;
    do {
      try {
        posTo = par.indexOf(' ', pos + 1);
        tmp.add(
            int.parse(par.substring(pos, posTo == -1 ? par.length : posTo)));
      } catch (e) {
        //none
      } finally {
        pos = par.indexOf(' ', pos + 1);
      }
      ;
    } while (pos > 0);
    return tmp;
  }

  int _countItems(String value, List<String> element) {
    int result = 0;
    element.forEach((item) {
      if (item == value) result++;
    });
    return result;
  }

  Map<String, int> getWordsQuantity(List<String> par) {
    Map<String, int> tmp = Map.fromIterable(par.toSet(),
        key: (item) => item.toString(),
        value: (item) => _countItems(item, par));
    return tmp;
  }

  Set<int> getStringNumbers(List<String> par) {
    Set<int> tmp = Set();
    par.forEach((element) {
      if (element.intByString() != null) tmp.add(element.intByString());
    });
    return tmp;
  }
}
