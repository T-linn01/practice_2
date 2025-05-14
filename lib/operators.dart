import 'dart:io';

void main() {
  stdout.write("Ten nhan vien:  ");
  String name = stdin.readLineSync()!;

  stdout.write("So gio lam viec trong thang: ");
  int hours = int.parse(stdin.readLineSync()!);

  stdout.write("Luong moi gio: ");
  double rate = double.parse(stdin.readLineSync()!);

  double totalSalary = hours * rate;

  print('\n===Bảng Lương Nhân Viên ===');
  print('Tên nhân viên: $name');
  print('Số giờ làm việc trong tháng: $hours');
  print('Lương mỗi giờ: ${rate.toStringAsFixed(0)} VND');
  print('Tổng lương: ${totalSalary.toStringAsFixed(0)} VND');

  
}