import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF191919),
      title: Row(
        children: [
          Spacer(),
          Image.asset(
            "images/header.png",
            width: 210,
            height: 50,
          ),
          Spacer(flex: 5),
          CircleAvatar(
            backgroundImage: AssetImage("images/avatar.png"),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
