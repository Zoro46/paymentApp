import 'package:assignment_1/profile_page.dart';
import 'package:flutter/material.dart';

class Setting_page extends StatefulWidget {
  const Setting_page({super.key});

  @override
  State<Setting_page> createState() => _Setting_pageState();
}

class _Setting_pageState extends State<Setting_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_rounded),
        title: Text("Settings"),
      ),

      body: Column(
    children: [

      //  Change Password option
      Padding(
        padding: const EdgeInsets.fromLTRB(15,15,0,0),
        child: Row(
        children: [
          CircleAvatar(
            radius: 20.0,
              // backgroundColor: Colors.white,
              child: Icon(Icons.edit_note_outlined),
            ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15,0,0,0),
            child: Text("Change Password", style:TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),),
          )
            ],
          ),
      ),

      //  Profile Option
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute( builder: (context) => Profile_page()));
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15,15,0,0),
          child: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
                // backgroundColor: Colors.white,
                child: Icon(Icons.person),
              ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15,0,0,0),
              child: Text("Profile", style:TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),),
            )
              ],
            ),
        ),
      ),

      ],
    ),
    );
  }
}
