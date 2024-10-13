import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final String title;
  const MyElevatedButton({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          Color(0xFFE84427),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
