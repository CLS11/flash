import 'package:flash/chat_page.dart';
import 'package:flash/home_page.dart';
import 'package:flash/login_page.dart';
import 'package:flash/registration_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Flash());
}

class Flash extends StatelessWidget {
  const Flash({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(),
      ),
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => const HomePage(),
        LoginPage.id: (context) => const LoginPage(),
        ChatPage.id: (context) => const ChatPage(),
        RegistrationPage.id: (context) => const RegistrationPage(),
      },
    );
  }
}
