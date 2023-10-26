class UserModel {
  final String id;
  final String name;
  final String email;
  final String password;
  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
  });
  factory UserModel.fromJson(Map<String, dynamic> data) => UserModel(
        id: data['id'],
        name: data['name'],
        email: data['email'],
        password: data['password'],
      );
  Map<String, dynamic> toMap() =>
      {'id': id, 'name': name, 'email': email, 'password': password};
}
