import 'package:flash/constants.dart';
import 'package:flash/tiles/button_tile.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key,});

  static const String id = 'Login Page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'logo',
              child: Container(
                height: 200, 
                child: Image.asset('images/logo.png'),
              ),
            ),
            const SizedBox(height: 48),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: textFieldDecoration.copyWith(
                hintText: 'Enter your email',
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: textFieldDecoration.copyWith(
                hintText: 'Enter your password',
              ),
            ),
            const SizedBox(height: 24),
            ButtonTile(
              color: Colors.lightBlueAccent, 
              text: 'LOG IN', 
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}
