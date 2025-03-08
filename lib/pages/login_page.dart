// ignore_for_file: inference_failure_on_instance_creation

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash/constants.dart';
import 'package:flash/pages/chat_page.dart';
import 'package:flash/tiles/button_tile.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const String id = 'Login Page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  late final String email;
  late final String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
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
                  //Do something with the user input.
                  email = value;
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
                  password = value;
                },
                decoration: textFieldDecoration.copyWith(
                  hintText: 'Enter your password',
                ),
              ),
              const SizedBox(height: 24),
              ButtonTile(
                color: Colors.lightBlueAccent,
                text: 'LOG IN',
                onPressed: () async {
                  setState(() {
                    showSpinner = true;
                  });
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                      email: email,
                      password: password,
                    );
                    await Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ChatPage()),
                    );
                    setState(() {
                      showSpinner = false;
                    });
                  } catch (e) {
                    print(e);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
