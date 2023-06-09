class UserModel {
  final String name, address, zip, phoneNo, email;

  UserModel(
      {required this.phoneNo,
      required this.email,
      required this.name,
      required this.address,
      required this.zip});

  factory UserModel.fromJson(Map map) {
    return UserModel(
        email: map['email'],
        name: map['name'] ?? '',
        address: map['address'] ?? '',
        zip: map['zip'] ?? '',
        phoneNo: map['phoneNo'] ?? '');
  }
}
