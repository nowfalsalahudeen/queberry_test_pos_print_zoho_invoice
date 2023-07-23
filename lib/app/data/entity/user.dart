import 'package:floor/floor.dart';

@entity
class User {
  @PrimaryKey(autoGenerate: true)
  int? id;

  String? name;

  String? email;

  String? password;

  String? token;

  User({this.id, this.name, this.email, this.password, this.token});

  @override
  String toString() {
    return 'User{id: $id, name: $name, email: $email, password: $password, token: $token}';
  }
}
