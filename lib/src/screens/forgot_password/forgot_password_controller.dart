import 'package:comida_app/src/data/repositories/authentication_repository.dart';
import 'package:comida_app/src/helpers/get.dart';
import 'package:flutter/widgets.dart';

class ForgotPasswordController extends ChangeNotifier {
  String _email = '';

  String get email => _email;

  final AuthenticationRepository? _repository = Get.i.find<AuthenticationRepository>();

  void onEmailChanged(String text) {
    _email = text;
  }

  Future<bool> submit() {
    return _repository!.sendResetToken(_email);
  }
}
