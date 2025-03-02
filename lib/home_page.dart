import 'package:flash/login_page.dart';
import 'package:flash/registration_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
 const HomePage({super.key});

  static const String id = 'Home Page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            Row(
              children: [
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60,
                  ),
                ),
                const Text(
                  'F L A S H   C H A T',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Material(
                elevation: 5,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30),
                child: MaterialButton(
                  onPressed: () {
                   //LOGIN SCREEN
                   Navigator.push(
                       context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                     );
                  },
                  minWidth: 200,
                  height: 42,
                  child: const Text(
                    'LOG IN',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30),
                elevation: 5,
                child: MaterialButton(
                  onPressed: () {
                    //REGISTRATION PAGE
                    Navigator.push(
                       context,
                       MaterialPageRoute(
                        builder: (context) => const RegistrationPage(),
                       ),
                    );
                  },
                  minWidth: 200,
                  height: 42,
                  child: const Text(
                    'REGISTER',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}