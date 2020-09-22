import 'dart:io';
import 'dart:html';

void main(List<String> args) {
  FaktoriyelHesapla faktoriyelHesapla = new FaktoriyelHesapla();
  int s1,
      s2,
      s1FakSonuc,
      s2FakSonuc,
      fakCarpmaSonuc,
      fakCikarmaSonuc,
      fakToplamaSonuc;
  double fakBolmeSonuc;

    print("Birinci sayıyı girin : ");
    s1 = int.parse(stdin.readLineSync());
    s1FakSonuc = faktoriyelHesapla.fakHesapla(s1);

    print("İkinci sayıyı girin : ");
    s2 = int.parse(stdin.readLineSync());
    s2FakSonuc = faktoriyelHesapla.fakHesapla(s2);

    fakBolmeSonuc = faktoriyelHesapla.fakBol(s1FakSonuc, s2FakSonuc);
    fakCarpmaSonuc = faktoriyelHesapla.fakCarp(s1FakSonuc, s2FakSonuc);
    fakToplamaSonuc = faktoriyelHesapla.fakTopla(s1FakSonuc, s2FakSonuc);
    fakCikarmaSonuc = faktoriyelHesapla.fakCikar(s1FakSonuc, s2FakSonuc);

    print("Birincinin faktoriyeli : " +
        s1FakSonuc.toString() +
        " \n İkincinin Faktoriyeli : " +
        s2FakSonuc.toString() +
        "\n Birincinin ikinciye bölümü : " +
        fakBolmeSonuc.toString() +
        "\n Çarpımları : " +
        fakCarpmaSonuc.toString() +
        "\n Toplamları : " +
        fakToplamaSonuc.toString() +
        "\n Birinci eksi ikinci : " +
        fakCikarmaSonuc.toString());

  var stream = KeyEvent.keyPressEvent.forTarget(document.body);
  stream.listen((keyEvent) {print("Programdan Çıkıldı"); });
}

class FaktoriyelHesapla {
  int fakHesapla(fak) {
    int fakSonuc = 1;
    while (fak >= 1) {
      fakSonuc = fakSonuc * fak;
      fak--;
    }
    return fakSonuc;
  }

  double fakBol(fak1, fak2) {
    double fakBolSonuc;
    fakBolSonuc = fak1 / fak2;
    return fakBolSonuc;
  }

  int fakTopla(fak1, fak2) {
    int fakToplaSonuc;
    fakToplaSonuc = fak1 + fak2;
    return fakToplaSonuc;
  }

  int fakCikar(fak1, fak2) {
    int fakCikarSonuc;
    fakCikarSonuc = fak1 - fak2;
    return fakCikarSonuc;
  }

  int fakCarp(fak1, fak2) {
    int fakCarpSonuc;
    fakCarpSonuc = fak1 * fak2;
    return fakCarpSonuc;
  }
}
