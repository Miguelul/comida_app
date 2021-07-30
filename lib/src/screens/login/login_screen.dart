/// Flutter code sample for Form

// This example shows a [Form] with one [TextFormField] to enter an email
// address and an [ElevatedButton] to submit the form. A [GlobalKey] is used here
// to identify the [Form] and validate input.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/widgets/form.png)

import 'package:flutter/material.dart';

/// This is the main application widget.
class LoginScreen extends StatelessWidget {
  static const String _title = 'Login Page';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const LoginFormState(),
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
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
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
            validator: (String value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your password',
              
            ),
            validator: (String value) {
              if (value == null || value.isEmpty ) {
                return 'Please enter some password';
              }
              if(value.length<6) return 'Password most have a least 6 charater.';
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState.validate()) {
                  // Process data.
                }
              },
              child: const Text('Enter'),
            ),
          ),
        ],
      ),
    );
  }
}
