import 'dart:io';

double Tong(double toan, double ly, double hoa) {
  return toan + ly + hoa;
}

double TrungBinh(double Tong) {
  return Tong / 3;
}

String Xeploai(double TrungBinh) {
  if (TrungBinh >= 8.0) {
    return "Giỏi";
  } else if (TrungBinh >= 6.5 ) {
    return "Khá";
  } else if (TrungBinh >= 5.0) {
    return "Trung Bình";
  } else {
    return "Yếu";
  }
}
void KetQua(String name, double diemTong, double diemTrungBinh, String rank) {
  print('\n===Bảng Điểm ===');
  print('Họ tên: $name');
  print('Điểm Tổng : $diemTong');
  print('Điểm Trung Bình: $diemTrungBinh');
  print('Rank: $rank');
}
void main() {
  stdout.write("Họ và tên:  ");
  String name = stdin.readLineSync()!;

  stdout.write("Điểm Toán: ");
  double toan = double.parse(stdin.readLineSync()!);

  stdout.write("Điểm Lý: ");
  double ly = double.parse(stdin.readLineSync()!);

  stdout.write("Điểm Hóa: ");
  double hoa = double.parse(stdin.readLineSync()!);

  double diemTong = Tong(toan, ly, hoa);
  double diemTrungBinh = TrungBinh(diemTong);
  String rank = Xeploai(diemTrungBinh);
  KetQua(name, diemTong, diemTrungBinh, rank);
}


