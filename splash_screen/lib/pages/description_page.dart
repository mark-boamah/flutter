import 'package:flutter/material.dart';
import 'package:splash_screen/pages/course_detail.dart';

class DescriptionPage extends StatelessWidget {
  //const DescriptionPage({Key? key}) : super(key: key);
  String courseTitle;
  String duration;
  String shortDescription;
  String mainDescription;
  List mySubCourses;
  DescriptionPage(this.courseTitle, this.duration, this.shortDescription,
      this.mainDescription, this.mySubCourses);

  @override
  Widget build(BuildContext context) {
    // mediaquery height and width
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        child: Column(
          children: <Widget>[
            // Stack widget contains the image part of the page
            Stack(
              children: <Widget>[
                // Positioned(
                //   bottom: 90,
                //   left: 20,
                //   child: Container(
                //     child: Image.asset('lib/icons/back.png'),
                //   ),
                // ),
                Container(
                  height: height * 0.4,
                  width: width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('lib/icons/minder.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.1),
                        Colors.black.withOpacity(0.5),
                        Colors.black.withOpacity(1.0),
                      ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 90,
                  left: 20,
                  child: RichText(
                    text: const TextSpan(
                      text: "Be firm, ",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 30,
                      ),
                      children: [
                        TextSpan(
                          text: "Be \nResilient",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 34,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),

            // non-image part of the page
            Transform.translate(
              offset: Offset(0.0, -(height * 0.3 - height * 0.26)),
              child: Container(
                width: width,
                height: height * 0.6,
                padding: const EdgeInsets.only(top: 30, left: 15),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // course title
                    Text(
                      courseTitle,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),

                    // course description
                    const Text(
                      'By Bart and Tessa',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 30),

                    // other details
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
                          '${duration} minute(s)',
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
                          shortDescription,
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    // Main description text
                    RichText(
                      text: TextSpan(
                        text: mainDescription,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ),

                    // subscribe button

                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, right: 15.0, bottom: 8.0, left: 1.0),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    //return HomePage();
                                    // return CourseDetail(recentCourses[index][0].toString(),
                                    //     recentCourses[index][3]);
                                    return CourseDetail(
                                        courseTitle, mySubCourses);
                                  },
                                ));
                              },
                              child: const Text(
                                'Get Started',
                                style: TextStyle(fontSize: 20),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
