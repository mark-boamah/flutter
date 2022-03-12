import 'package:flutter/material.dart';

import '../pages/first_page.dart';
import '../pages/second_page.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[100],
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            child: Center(
              child: Text(
                'L O G O',
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text(
              'Page 1',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => FirstPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text(
              'Page 2',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => SecondPage()));
            },
          ),
        ],
      ),
    );
  }
}
