import 'package:flutter/material.dart';
import 'package:project_part2/pages/customer.dart';
import 'package:project_part2/pages/plans.dart';
import 'package:project_part2/pages/staff.dart';

import 'line_chart_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List<Widget> _WidgetOptions = <Widget>[
    Text('Home'),
    Text('Options'),
    Text('Profile'),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              child: LineChartPage(),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Payment Trend",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato'),
              ),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 30, bottom: 10)),
                    Menu(
                      title: " My Plans",
                      icon: Icons.playlist_add_rounded,
                      col: Colors.black,
                      link: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Plans()),
                        ),
                      },
                    ),
                    Menu(
                      title: "My Staff",
                      icon: Icons.person_add,
                      col: Colors.black,
                      link: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => StaffPage()),
                        ),
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 30)),
                    Menu(
                      title: "Customers",
                      icon: Icons.person_add,
                      col: Colors.black,
                      link: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CustomerPage()),
                        ),
                      },
                    ),
                    Menu(
                      title: "My Options",
                      icon: Icons.more,
                      col: Colors.black,
                      link: () => {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Home',
              style: TextStyle(color: Colors.black, fontFamily: 'Lato'),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle,
              color: Colors.black,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Options',
              style: TextStyle(color: Colors.black, fontFamily: 'Lato'),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_pin_circle_sharp,
              color: Colors.black,
            ),
            // ignore: deprecated_member_use
            title: Text(
              'Customers',
              style: TextStyle(color: Colors.black, fontFamily: 'Lato'),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}

class Menu extends StatelessWidget {
  Menu({this.title, this.icon, this.col, this.link});

  final String title;
  final IconData icon;
  final Color col;
  final Function link;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      color: Colors.grey[200],
      margin: EdgeInsets.all(20.0),
      child: InkWell(
        onTap: link,
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  icon,
                  size: 30.0,
                  color: col,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
