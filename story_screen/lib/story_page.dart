import 'dart:async';

import 'package:flutter/material.dart';
import 'package:story_screen/story_bars.dart';
import 'stories/story_1.dart';
import 'stories/story_2.dart';
import 'stories/story_3.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  int currentStoryIndex = 0;
  // creating a list of stories
  final List<Widget> myStories = [
    const MyStory1(),
    const MyStory2(),
    const MyStory3(),
  ];

  List<double> percentWatched = [];

  @override
  void initState() {
    super.initState();

    // initially, all stories have not been watched yet
    for (var i = 0; i < myStories.length; i++) {
      percentWatched.add(0);
    }

    _startWatching();
  }

  // function to activate watching a story
  void _startWatching() {
    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      setState(() {
        // only add 0.01 as long as it is below 1
        if (percentWatched[currentStoryIndex] + 0.01 < 1) {
          percentWatched[currentStoryIndex] += 0.01;
        }
        // if adding 0.01 exceeds 1, set percentage to a and cancel timer
        else {
          percentWatched[currentStoryIndex] = 1;
          timer.cancel();

          // also go to the next story as long as there are more stories to go through
          if (currentStoryIndex < myStories.length - 1) {
            currentStoryIndex++;
            // restarrt story timer
            _startWatching();
          }
          // if we finish the last story, then we return to the homepage
          else {
            Navigator.pop(context);
          }
        }
      });
    });
  }

  // function to activate previous or next on tap
  void _onTapDown(TapDownDetails details) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double dx = details.globalPosition.dx;

    // user talps on the first half of the screen
    if (dx < screenWidth / 2) {
      setState(() {
        // as long as this isn't the first story
        if (currentStoryIndex > 0) {
          // set previous and current story watched percentage back to 0
          percentWatched[currentStoryIndex - 1] = 0;
          percentWatched[currentStoryIndex] = 0;

          // go to back to previous story
          currentStoryIndex--;
        }
      });
    }
    // user taps on second half of the screen
    else {
      setState(() {
        // if there are no more stories left
        if (currentStoryIndex < myStories.length - 1) {
          // finish current story
          percentWatched[currentStoryIndex] = 1;

          // move to next story
          currentStoryIndex++;
        }

        // if user is on the last story, finish this story
        else {
          percentWatched[currentStoryIndex] = 1;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) => _onTapDown(details),
      child: Scaffold(
        body: Stack(
          children: [
            // story
            myStories[currentStoryIndex],

            // progress bar
            MyStoryBars(
              percentWatched: percentWatched,
            ),
          ],
        ),
      ),
    );
  }
}
