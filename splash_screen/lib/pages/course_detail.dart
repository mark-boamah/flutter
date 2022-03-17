import 'dart:math';

import 'package:flutter/material.dart';
import 'package:splash_screen/util/detail_card.dart';

class CourseDetail extends StatelessWidget {
  //const CourseDetail({Key? key}) : super(key: key);
  String courseTitle;
  List subCourses;

  CourseDetail(this.courseTitle, this.subCourses);

  var selectedColors = [
    const Color.fromARGB(255, 159, 197, 232),
    const Color.fromARGB(255, 61, 133, 198),
    const Color.fromARGB(255, 111, 168, 220)
  ];

  // ColorTween color = ColorTween(
  //     begin: const Color.fromARGB(255, 61, 133, 198),
  //     end: const Color.fromARGB(255, 159, 197, 232));

  // final List subCourses = [
  //   [''],
  // ];

  //final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: CustomScrollView(
        //controller: scrollController,
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: Container(
                child: Center(
                    child: Text(
                  courseTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                )),
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: const Color.fromARGB(255, 61, 133, 198),
            expandedHeight: 350,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/header.png',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Material(
                    child: Container(
                      height: 150,
                      child: Card(
                        elevation: 15,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.only(bottom: 20),
                        //color: color.lerp(index / (subCourses.length - 1)),
                        color: selectedColors[index % selectedColors.length],
                        //elevation: 2,
                        child: ListTile(
                          isThreeLine: true,
                          title: Padding(
                            padding: const EdgeInsets.only(bottom: 20, top: 15),
                            child: Text(
                              subCourses[index][0],
                              style: const TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child: Image.asset(
                                      'lib/icons/stopwatch.png',
                                    ),
                                    height: 20,
                                    width: 20,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    '${subCourses[index][1]} minute(s)',
                                    style: const TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Image.asset(
                                      'lib/icons/type.png',
                                    ),
                                    height: 20,
                                    width: 20,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    '${subCourses[index][2]}',
                                    style: const TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          trailing: Container(
                            child: Image.asset(
                              'lib/icons/teacher.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }, childCount: subCourses.length),
          ),
        ],
      ),
    );
  }
}
