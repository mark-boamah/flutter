import 'package:flutter/material.dart';
import 'package:splash_screen/pages/course_detail.dart';
import 'package:splash_screen/pages/description_page.dart';
import 'package:splash_screen/pages/page_1.dart';

import 'util/course_card.dart';
import 'util/recent_courses_card.dart';

class NewHomePage extends StatefulWidget {
  const NewHomePage({Key? key}) : super(key: key);

  @override
  State<NewHomePage> createState() => _NewHomePageState();
}

class _NewHomePageState extends State<NewHomePage> {
  final List recommendedCourses = [
    [
      'Anxiety',
      'Do you feel anxious or very nervous before or after performances?'
    ],
    ['Rage', 'Who are you angry at? Are you sure it is not at yourself?'],
    [
      'Perfectionism',
      'Are you been too hard on yourself? Are you a perfectionist?'
    ],
  ];

  final List recentCourses = [
    [
      'Who is an artist?',
      'Do you have any idea...?',
      0.40,
      [
        ['You are Persistent', '23', 'Audio exercise'],
        ['You are Passionate', '15', 'Reading'],
        ['You are Fearless', '20', 'Audio exercise'],
        ['You are Disciplined', '7', 'Video exercise'],
        ['You are Patient', '8', 'Reading']
      ],
      '35',
      'Reading, Listening, Watching',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    ],
    [
      'What do I do?',
      'What can I do?',
      0.75,
      [
        ['Question everything', '23', 'Reading'],
        ['Dabble in multiple pursuits', '23', 'Audio exercise'],
        ['Shaking off naysayers', '23', 'Video exercise'],
        ['Seeking inspiration', '23', 'Audio exercise'],
        ['Pave your own way', '23', 'Reading']
      ],
      '45',
      'Reading and Listening',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    ],
    [
      'How do I do it?',
      'Which approach is better?',
      0.15,
      [
        ['Brainstorming', '23', 'Video exercise'],
        ['Preparation', '23', 'Audio and Video exercise'],
        ['Incubation', '23', 'Reading'],
        ['Illumination', '23', 'Audio exercise'],
        ['Verification', '23', 'Audio exercise']
      ],
      '40',
      'Reading, Listening and Watching',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    ],
    [
      'High expectations',
      'Are you up to the task?',
      0.10,
      [
        ['Adopting Growth Mentality', '23', 'Audio exercise'],
        ['Making expectations clear', '23', 'Audio exercise'],
        ['Make Mistakes', '23', 'Audio exercise'],
        ['Aim for the best', '23', 'Audio exercise'],
        ['Offer support', '23', 'Audio exercise']
      ],
      '38',
      'Listening',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    ],
    [
      'Peer influence',
      'Are you always under pressure?',
      0.35,
      [
        ['You are Strong', '23', 'Audio exercise'],
        ['You are Strong', '23', 'Audio exercise'],
        ['You are Strong', '23', 'Audio exercise'],
        ['You are Strong', '23', 'Audio exercise'],
        ['You are Strong', '23', 'Audio exercise']
      ],
      '33',
      'Listening',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    ],
    [
      'Determination',
      'Are you focused enough?',
      0.90,
      [
        ['You are Strong', '23', 'Audio exercise'],
        ['You are Strong', '23', 'Audio exercise'],
        ['You are Strong', '23', 'Audio exercise'],
        ['You are Strong', '23', 'Audio exercise'],
        ['You are Strong', '23', 'Audio exercise']
      ],
      '55',
      'Listening',
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    ],
  ];

  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: const Drawer(),
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 75,
          ),
          // app bar
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[200]),
                  child: InkWell(
                    onTap: () {
                      _key.currentState!.openDrawer();
                    },
                    child: Image.asset(
                      'lib/icons/menu.png',
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[200]),
                  child: Image.asset(
                    'lib/icons/bell.png',
                    color: Colors.grey[800],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),

          // discover a new path
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'Welcome back, Tessa',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),

          const SizedBox(height: 25),

          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 30,
                            child: Image.asset(
                              'lib/icons/search.png',
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search for a course..',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  margin: const EdgeInsets.only(left: 8),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey[800]),
                  child: Image.asset(
                    'lib/icons/preferences.png',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ), // end of search bar

          const SizedBox(height: 30),

          // Recommendations: title
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Recommendations',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                Text(
                  'See More',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          Container(
            height: 100,
            child: ListView.builder(
              itemCount: recommendedCourses.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CourseCard(
                  courseTitle: recommendedCourses[index][0],
                  shortDescription: recommendedCourses[index][1],
                );
              },
            ),
          ),

          const SizedBox(height: 25),

          // Your progress: title
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Your Progress',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                Text(
                  'See Details',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: ListView.builder(
                itemCount: recentCourses.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        //return HomePage();
                        // return CourseDetail(recentCourses[index][0].toString(),
                        //     recentCourses[index][3]);
                        return DescriptionPage(
                            recentCourses[index][0].toString(),
                            recentCourses[index][4],
                            recentCourses[index][5],
                            recentCourses[index][6],
                            recentCourses[index][3]);
                      },
                    )),
                    child: RecentCoursesCard(
                      courseTitle: recentCourses[index][0],
                      shortDescription: recentCourses[index][1],
                      progressPercentage: recentCourses[index][2],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
