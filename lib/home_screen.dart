import 'package:flutter/material.dart';
import 'package:teachable_course_content/widgets/my_app_bar.dart';
import 'package:teachable_course_content/widgets/sections/banner_section/banner_section.dart';
import 'package:teachable_course_content/widgets/sections/details_section/details_section.dart';
import 'package:teachable_course_content/widgets/sections/lessons_section/lessons_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF9FAFD),
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: double.infinity),
              SizedBox(height: 16),
              // top section
              BannerSection(),
              SizedBox(height: 16),
              Wrap(
                spacing: 16,
                children: [
                  LessonsSection(),
                  DetailsSection(),
                ],
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
