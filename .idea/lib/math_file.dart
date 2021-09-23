class My_Math {
  int find_nod(int par1, int par2) {
    int v1 = par2 > par1 ? par2 : par1, v2 = par2 > par1 ? par1 : par2;
    return v2 != 0 ? find_nod(v2, v1 % v2) : v1;
  }

  int find_nok(int par1, int par2) {
    return par1 ~/ find_nod(par1, par2) * par2;
  }

  String dec_2_bin(int par) {
    String result = (par % 2).toString();
    int v = par ~/ 2;
    while (v != 0) {
      result = (v % 2).toString() + result;
      v = v ~/ 2;
    }
    return result;
  }

  int bin_2_dec(String par) {
    int tmp = 0;
    try {
      for (int i = 0; i < par.length; i++) {
        tmp <<= 1;
        tmp += int.parse(par[i]);
      }
      return tmp;
    } catch (e) {
      return 0;
    }
  }
}

extension numX on num {
  num stepen(int n) {
    num result = this;
    for (int i = 0; i < n - 1; i++) result *= this;
    return result;
  }

  num rootN(int n) {
    num root = this;
    if (root < 0 || n < 0) throw ("Number must be greater than 0!");
    try {
      for (int i = 0; i <= 20; i++) {
        root = (1 / n) * ((n - 1) * root + (this / root.stepen(n - 1)));
      }
    } catch (E) {
      throw ("Calculation error!");
    }
    return root;
  }
}

class Point {
  double _x;
  double _y;
  double _z;

  Point(this._x, this._y, this._z);

  factory Point.zeroPoint() {
    return Point(0, 0, 0);
  }

  factory Point.oneVector() {
    return Point(1, 1, 1);
  }

  double distanceTo(Point another) {
    return ((this._x - another._x).stepen(2) +
            (this._y - another._y).stepen(2) +
            (this._z - another._z).stepen(2))
        .rootN(2);
  }
}
