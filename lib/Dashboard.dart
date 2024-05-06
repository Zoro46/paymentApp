import 'package:assignment_1/profile_page.dart';
import 'package:assignment_1/settings.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  var current_Index = 0;

  List pageIndex = [Home_Page(),Profile_page(), Setting_page()];

  void onTapChange(int value){
    setState(() {
      current_Index = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),

        ],
        currentIndex: current_Index,
        onTap: onTapChange,
        selectedItemColor: Colors.redAccent,
      ),

      body: Center(
        child: pageIndex.elementAt(current_Index),
      ),
    );
  }
}
