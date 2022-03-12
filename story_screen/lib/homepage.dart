import 'package:flutter/material.dart';
import 'package:story_screen/story_page.dart';
import 'package:story_screen/util/side_bar.dart';
import 'package:story_screen/util/story_circles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // open story when tapped
  void _openStory() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StoryPage(),
      ),
    );
  }

  // selected index for bottom navigation
  int _selectedIndex = 0;

  // function to set current navigation item
  void _navigatorBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // List of pages to load
  final List<Widget> _pages = [
    const Center(
      child: Text(
        'Homepage',
        style: TextStyle(fontSize: 50),
      ),
    ),
    const Center(
      child: Text(
        'Message page',
        style: TextStyle(fontSize: 50),
      ),
    ),
    const Center(
      child: Text(
        'Settings page',
        style: TextStyle(fontSize: 50),
      ),
    ),
    const Center(
      child: Text(
        'Account',
        style: TextStyle(fontSize: 50),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('S T O R I E S'),
        backgroundColor: Colors.deepPurple[300],
      ),
      drawer: const Drawer(
        child: SideBar(),
      ),
      body: Column(children: <Widget>[
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            itemBuilder: (context, index) {
              return StoryCircle(
                function: _openStory,
              );
            },
          ),
        ),
        _pages[_selectedIndex],
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigatorBottomBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
