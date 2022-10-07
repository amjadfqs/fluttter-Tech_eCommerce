class UserModel {
  late final email;
  late final password;

  UserModel({required this.email, required this.password});

  UserModel.fromMap(Map<String, dynamic> map) {
    email = map['email'];
    password = map['password'];
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{'email': email, 'password': password};
    return map;
  }
}
