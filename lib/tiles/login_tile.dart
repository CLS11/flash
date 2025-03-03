import 'package:flutter/material.dart';

class LoginTile extends StatelessWidget {
  const LoginTile({
    required this.color,
    required this.text,
    required this.onPressed,
    super.key,
  });

  final Color color;
  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Material(
        elevation: 5,
        color: color,
        borderRadius: BorderRadius.circular(30),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200,
          height: 42,
          child: Text(
            text,
          ),
        ),
      ),
    );
  }
}
