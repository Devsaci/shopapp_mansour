class ShopLoginModel {
  late bool status;
  late String message;
  late UserData data;
}

class UserData {
  late int id;
  late String name;
  late String email;
  late String phone;
  late String image;
  late int points;
  late int credit;
  late String token;

  UserData({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.image,
    required this.points,
    required this.credit,
    required this.token,
  });
// named constructor
  UserData.name(this.id, this.name, this.email, this.phone, this.image,
      this.points, this.credit, this.token);
}
