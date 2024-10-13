import 'package:flutter/material.dart';
import 'package:teachable_course_content/constants.dart';
import 'package:teachable_course_content/widgets/sections/details_section/widgets/my_outlined_button.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          width: 392,
          height: 141,
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "0% COMPLETE",
                    style: kTitleStyleMedium,
                  ),
                  LinearProgressIndicator(
                    value: 0.01,
                    backgroundColor: Color(0xFFF9FAFD),
                    valueColor: AlwaysStoppedAnimation(Color(0xFFE84427)),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 392,
          height: 195,
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 98,
                    height: 98,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/ibo.jpg"),
                    ),
                  ),
                  Text(
                    "Ibrael Yildirim",
                    style: kTitleStyleMedium,
                  ),
                ],
              ),
            ),
          ),
        ),
        MyOutlinedButton(),
      ],
    );
  }
}
