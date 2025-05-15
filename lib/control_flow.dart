//B1: Xep Loai Hoc Sinh voi if-else
/*
import 'dart:io';

void main() {
  stdout.write("Điểm số: ");
  double diem = double.parse(stdin.readLineSync()!);

  String Rank(double diem) {
    if (diem >= 8.0) {
      return "Giỏi";
    } else if ( diem >= 6.5) {
      return "Khá";
    } else if (diem >= 5.0) {
      return "Trung Bình";
    } else {
      return "Yếu";
    }
  }

  print("\n====Xếp loại học sinh====");
  print("Điểm số: $diem");
  print("Rank: ${Rank(diem)}");

}
*/

// B2: Số ngày trong tháng w switch_case
import 'dart:io';

void main() {
  stdout.write("Nhập vào số tháng(1=12): ");
  int month = int.parse(stdin.readLineSync()!);

  switch(month) {
    case 2:
      print("Tháng $month có 28 ngày");
      break;
    case 4:
    case 6:
    case 9:
    case 11:
      print("Tháng $month có 30 ngày");
      break;
    case 1:
    case 3:
    case 5:
    case 7:
    case 8:
    case 10:
    case 12:
      print("Tháng $month có 31 ngày");
      break;
    default:
      print("Không có tháng đó!");
      break;
  }
}