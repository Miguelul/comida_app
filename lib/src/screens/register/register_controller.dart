import 'package:comida_app/src/data/models/user.dart';
import 'package:comida_app/src/data/repositories/authentication_repository.dart';
import 'package:comida_app/src/helpers/get.dart';
import 'package:comida_app/ui/global_widgets/custom_form.dart';
import 'package:flutter/widgets.dart';

class RegisterController extends ChangeNotifier {
  String _email = '', _name = '', _lastname = '';
  final AuthenticationRepository? _repository = Get.i.find<AuthenticationRepository>();
  GlobalKey<CustomFormState> formKey = GlobalKey();

  void onEmailChanged(String text) {
    _email = text;
  }

  void onNameChanged(String text) {
    _name = text;
  }

  void onLastnameChanged(String text) {
    _lastname = text;
  }

  Future<bool> submit() async {
    return _repository!.register(
      User(
        id: null,
        email: _email,
        name: _name,
        lastname: _lastname,
        birthday: null,
      ),
    );
  }
}
