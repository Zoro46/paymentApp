import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  List name = ["Nandini Mittal", "Supriya Shrivastava"];
  List course = ["Flutter Intern", "Java Intern","Python Intern"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(

          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0)
              ),
                child: SizedBox(
                    child: Text("Flutter")
                ),
            ),

            ListTileTheme(
              selectedTileColor: Colors.cyan,

              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
              
              ),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notifiication"),

            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),

            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("log out"),

            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("HOMEPAGE"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: name.length,
            itemBuilder: (BuildContext, int index){
            return SizedBox(
              height: 200.0,
              width: 300.0,
              child: Padding(
                padding: const EdgeInsets.only(left:20.0, right: 20.0),
                child: Card(
                  color: Color(0xff6AD4DD),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text('${name[index]}'),
                              Text('${course[index]}'),
                            ],
                          ),

                          CircleAvatar()
                        ],
                      ),
                      Divider(color: Colors.black87, thickness: 0.80,),
                    ],
                  ),
                ),
              ),
            );
            })
      ),
    );
  }
}
