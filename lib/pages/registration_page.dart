import 'package:flash/constants.dart';
import 'package:flash/tiles/button_tile.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash/pages/chat_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  static const String id = 'Registration Page';

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _auth = FirebaseAuth.instance;
  late final String email;
  late final String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Hero(
              tag: 'logo',
              child: SizedBox(
                height: 200,
                child: Image.asset('images/logo.png'),
              ),
            ),
            const SizedBox(height: 48),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                //USER INPUT
                email =
                value;
              },
              decoration: textFieldDecoration.copyWith(
                hintText: 'Enter your email',
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                //Do something with the user input.
                password =
                value;
              },
              decoration: textFieldDecoration.copyWith(
                hintText: 'Enter your password',
              ),
            ),
            const SizedBox(height: 24),
            ButtonTile(
              color: Colors.blueAccent,
              text: 'REGISTER',
              onPressed: () async {
                try {
                  final newUser = await _auth.createUserWithEmailAndPassword(
                    email: email,
                    password: password,
                  );
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChatPage(),
                    ),
                  );
                  } catch (e) {
                  print(e);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
