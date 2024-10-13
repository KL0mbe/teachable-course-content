import 'package:flutter/material.dart';
import 'package:teachable_course_content/constants.dart';
import 'package:teachable_course_content/widgets/my_elevated_button.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "The Multi Orgasmic Man",
          style: kTitleStyleLarge,
        ),
        Card(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(32),
            child: Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "images/main.png",
                    width: 548,
                    height: 320,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 548,
                  height: 320,
                  child: Card(
                    color: Color(0xFFF9FAFD),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "The Journey Begins: 1 / 7",
                          style: kTitleStyleSmall,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "The Different Types of Male Orgasm",
                          style: kTitleStyleLarge,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 16),
                        MyElevatedButton(title: "Start Lesson"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
