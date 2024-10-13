import 'package:flutter/material.dart';
import 'package:teachable_course_content/constants.dart';

class MyOutlinedButton extends StatelessWidget {
  const MyOutlinedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.white),
      ),
      onPressed: () {},
      child: Text(
        "Teach online with teach:able",
        style: kTitleStyleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
