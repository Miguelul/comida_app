import 'package:comida_app/src/data/models/user.dart';

class AuthenticationProvider {
  Future<User?> login(String email, String password) async {
    // await Future.delayed(Duration(seconds: 3));
    if (email == "0" && password == "0") {
      return User(
        id: "1234567897",
        email: "miguel@gmail.com",
        name: "Miguel",
        lastname: "Brito",
        birthday: DateTime(2021, 3, 15),
      );
    }
    return null;
  }

  Future<bool> register(User user) async {
    await Future.delayed(Duration(seconds: 3));
    return true;
  }

  Future<bool> sendResetToken(String email) async {
    await Future.delayed(Duration(seconds: 3));
    return true;
  }
}
