part of 'models.dart';

class UserModels extends Equatable {
  final int id;
  final String username;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String imagePath;

  UserModels(this.id, this.username, this.email, this.address, this.houseNumber,
      this.phoneNumber, this.city, this.imagePath);

  @override
  List<Object?> get props =>
      [id, username, email, address, houseNumber, phoneNumber, city, imagePath];
}

UserModels mockUser = UserModels(
  1,
  'adiwinarno',
  'adiwinarno@gmail.com',
  'perum rajawali city',
  '26',
  '085719850369',
  'Tangerang',
  'https://th.bing.com/th/id/OIP.xetbHcpxh2PoSR2kS2xfCQAAAA?rs=1&pid=ImgDetMain'
);
