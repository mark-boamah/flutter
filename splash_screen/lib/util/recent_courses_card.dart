import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class RecentCoursesCard extends StatelessWidget {
  // fields
  final String courseTitle;
  final String shortDescription;
  final double progressPercentage;
  final List? subCourses;

  RecentCoursesCard(
      {required this.courseTitle,
      required this.shortDescription,
      required this.progressPercentage,
      this.subCourses});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: <Widget>[
            Container(
                height: 60,
                //padding: const EdgeInsets.all(5),
                child: CircularPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  radius: 30,
                  lineWidth: 6,
                  percent: progressPercentage,
                  progressColor: const Color.fromRGBO(192, 168, 144, 1),
                  backgroundColor: const Color.fromRGBO(216, 216, 192, 1),
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Text(
                    '${(progressPercentage * 100).toInt().toString()}%',
                    style: const TextStyle(fontSize: 18),
                  ),
                )),
            const SizedBox(width: 15),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        courseTitle,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
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
                  const SizedBox(width: 15),
                  Container(
                    height: 25,
                    child: Image.asset('lib/icons/right-arrow.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
