import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginTap extends StatelessWidget {
  loginTap({super.key});

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller: email,
            decoration: const InputDecoration(labelText: 'Email'),
            enabled: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              final bool emailValid = RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+\.[ict]+@[but]+\.[edu]+\.[eg]+")
                  .hasMatch(value);
              if (!emailValid) {
                return "Please Enter Valid Email";
              }
              return null;
            },
          ),
          TextFormField(
            controller: password,
            obscureText: true,
            decoration: const InputDecoration(labelText: 'Password'),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Login'),
          ),
        ],
      ),
    );
  }
}
