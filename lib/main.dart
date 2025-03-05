import 'package:firebase_core/firebase_core.dart';
import 'package:flash/pages/chat_page.dart';
import 'package:flash/pages/home_page.dart';
import 'package:flash/pages/login_page.dart';
import 'package:flash/pages/registration_page.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Flash());
}

class Flash extends StatelessWidget {
  const Flash({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(),
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
