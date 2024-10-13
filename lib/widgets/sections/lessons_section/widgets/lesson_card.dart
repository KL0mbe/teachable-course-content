import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:teachable_course_content/constants.dart';
import 'package:teachable_course_content/widgets/my_elevated_button.dart';

class LessonCard extends StatefulWidget {
  final String title;
  final Map<String, String> rows;
  const LessonCard({required this.title, required this.rows, super.key});

  @override
  State<LessonCard> createState() => _LessonCardState();
}

class _LessonCardState extends State<LessonCard> {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 780,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: kTitleStyleMedium,
                        ),
                        Text(
                          "0/${widget.rows.length} complete",
                          style: kTitleStyleSmall,
                        ),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      isExpanded
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: Color(0xFFE84427),
                    ),
                  ],
                ),
              ),
              if (isExpanded) ...[
                SizedBox(height: 16),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: widget.rows.length,
                  itemBuilder: (context, index) {
                    final keys = widget.rows.keys.toList();
                    final values = widget.rows.values.toList();
                    return InkWell(
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {},
                      child: Card(
                        color: Color(0xFFF9FAFD),
                        child: ListTile(
                          leading: Icon(
                            CupertinoIcons.circle,
                            color: Color(0xFFE84427),
                          ),
                          // SizedBox(width: 16),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                keys[index],
                                style: kTitleStyleSmall,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.play_rectangle,
                                    size: 15,
                                  ),
                                  Text(" ${values[index]}"),
                                ],
                              ),
                            ],
                          ),
                          trailing: MyElevatedButton(title: "Start"),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
