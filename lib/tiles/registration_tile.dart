import 'package:flutter/material.dart';

class RegistrationTile extends StatelessWidget {
  const RegistrationTile({
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
        color: color,
        borderRadius: BorderRadius.circular(30),
        elevation: 5,
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
