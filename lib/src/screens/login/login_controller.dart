import 'package:comida_app/src/data/models/user.dart';
import 'package:comida_app/src/data/repositories/authentication_repository.dart';
import 'package:comida_app/src/helpers/get.dart';
import 'package:flutter/widgets.dart';

class LoginController extends ChangeNotifier {
  String _email = '', _password = '';
  final AuthenticationRepository? _repository = Get.i.find<AuthenticationRepository>();

  void onEmailChanged(String text) {
    _email = text;
  }

  void onPasswordChanged(String text) {
    _password = text;
  }

  Future<User?> submit() async {
    return _repository!.login(_email, _password);
  }
}
