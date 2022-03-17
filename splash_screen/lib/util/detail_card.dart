import 'package:flutter/material.dart';

class DeatilsCard extends StatelessWidget {
  //const DeatilsCard({Key? key}) : super(key: key);

  String subCourseTitle;
  String duration;
  String shortDescription;

  DeatilsCard(
      {required this.subCourseTitle,
      required this.duration,
      required this.shortDescription});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              subCourseTitle,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            Text(
              duration,
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
            Text(
              shortDescription,
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
