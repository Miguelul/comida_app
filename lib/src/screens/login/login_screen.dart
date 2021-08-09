

import 'package:flutter/material.dart';
import '../../../constants.dart';

class LoginScreen extends StatelessWidget {
  static const String _title = 'Login Page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(

        // appBar: AppBar(title: const Text(_title)),
        body: const LoginFormState(),
      ),
    );
  }
}

class LoginFormState extends StatefulWidget {
  const LoginFormState({Key key}) : super(key: key);

  @override
  State<LoginFormState> createState() => _LoginFormStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _LoginFormStatefulWidgetState extends State<LoginFormState> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var edgeInsets = EdgeInsets.all(kDefaultPadding);
        return Form(
            key: _formKey,
            child: Padding(
            padding: const EdgeInsets.only(top: 200),
              child: Container(
                margin:
                    edgeInsets,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Username or Email',
                  ),
                  validator: (String value) {
                    return validaUsername(value);
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Password',
                  ),
                  obscureText: true,
                  validator: (String value) {
                    return validaPassword(value);
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                ),
                ElevatedButton(
                    onPressed: () {
                      // Validate will return true if the form is valid, or false if
                      // the form is invalid.
                      if (_formKey.currentState.validate()) {
                        // Process data.
                      }
                    },
                    child: const Text('Enter'),
                  )
                ,
              ],
          ),
        ),
            ));
  }

  String validaUsername(String value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }

  String validaPassword(String value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some password';
    }
    if (value.length < 6)
      return 'Password most have a least 6 charater.';
    return null;
  }
}
