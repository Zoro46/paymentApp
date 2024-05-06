import 'package:flutter/material.dart';
import 'package:assignment_1/home_page.dart';
import 'package:assignment_1/login_screen.dart';
import 'package:assignment_1/settings.dart';
import 'package:assignment_1/sign_up.dart';
import 'package:assignment_1/profile_page.dart';
//
class Practice_Page extends StatefulWidget {
  const Practice_Page({super.key});

  @override
  State<Practice_Page> createState() => _Practice_PageState();
}

int selectRadio = 0;
bool? selectCheck = false;
bool? nValue = false;
bool? tValue = false;
List dropDownlist= <String>['Home', 'Login', 'About'];
var dropvalue = 'menu';
List alphabet = ["A", "B", "C", "D", "E",];

class _Practice_PageState extends State<Practice_Page> {

  var current_Index = 0;

  List pageIndex = [Home_Page(),Profile_page(), Setting_page()];
  List maplist = [{"name": "Nandini", "course": "Flutter"}];
  void onTapChange(int value){
    setState(() {
      current_Index = value!;
    });
  }

  static const List <Tab>  TabBarContent = <Tab>[
    Tab(child: Text("Home")),
    Tab(child: Text("Profile")),
    Tab(child: Text("Settings")),
  ];
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(

      length: TabBarContent.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          bottom: TabBar(
            dividerColor: Colors.transparent,
            tabs: TabBarContent,
          ),
        ), 
        body: TabBarView(
          children: [
            Text("${maplist[0].name}"),
            Text("${maplist[0].name}"),
            Text("${maplist[0].name}"),
          ],
        ),

      


      // Scaffold(
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home_outlined),
        //       label: "Home",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.person),
        //       label: "Profile",
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.settings),
        //       label: "Settings",
        //     ),
        //
        //   ],
        //   currentIndex: current_Index,
        //   onTap: onTapChange,
        //   selectedItemColor: Colors.redAccent,
        // ),

    ));

  }
}

      //

        //

         // TabBarView(
         //  children: [
         //    Text("This is Left"),
         //    Text("This is Right"),
         //  ],


        // Center(
        //   child:pageIndex[current_Index],
        // ),
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(10.0, 80.0,10.0,0),
        //   child: SizedBox(
        //     height: 100.0,
        //     child: Card(
        //       child: Row(
        //         children: [
        //           Stack(
        //             children: [
        //               Padding(
        //                 padding: const EdgeInsets.fromLTRB(20.0,10.0,0,0),
        //                 child: CircleAvatar(
        //                   radius: 32.0,
        //                   backgroundImage:  AssetImage('assets/sakura_tree.jpeg'),
        //                 ),
        //               ),
        //               Padding(
        //                 padding: const EdgeInsets.fromLTRB(20,55,0,0),
        //                 child: Icon(Icons.camera_alt_rounded, color: Colors.black87),
        //               )
        //             ],
        //           ),
        //           Padding(
        //             padding: const EdgeInsets.fromLTRB(22.0,20,0,0),
        //             child: Container(
        //               child: Column(
        //                 children: [
        //                   Text("Name"),
        //                   Text("Subname",style: TextStyle(fontSize: 10.0),),
        //                 ],
        //               ),
        //             ),
        //           ),
        //
        //           Padding(
        //             padding: const EdgeInsets.fromLTRB(175.0,0,0,0),
        //             child: PopupMenuButton(
        //                 itemBuilder: (BuildContext context) => [
        //                   PopupMenuItem(
        //                     child: Row(
        //                       children: [
        //                         Icon(Icons.person_2_outlined),
        //                         Text("Profile"),
        //                       ],
        //                     ),
        //                   ),
        //                   PopupMenuItem(
        //                     child: Row(
        //                       children: [
        //                         Icon(Icons.edit),
        //                         Text("Edit"),
        //                       ],
        //                     ),
        //                   ),
        //                   PopupMenuItem(
        //                     child: Row(
        //                       children: [
        //                         Icon(Icons.home),
        //                         Text("Home"),
        //                       ],
        //                     ),
        //                   ),
        //                 ]
        //             ),
        //           )
        //         ],
        //       ),
        //     ),
        //   ),
        // ),


      // Stack(
      //   children: [
      //     Container(
      //       decoration: BoxDecoration(
      //         image: DecorationImage(
      //           image: AssetImage('assets/backgroung_image.jpeg'),
      //           fit: BoxFit.cover,
      //         )
      //       ),
      //     ),
      //     Padding(
      //       padding:  EdgeInsets.fromLTRB(30.0, 80.0, 0, 0),
      //       child: SizedBox(child: Text("Welcome", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 40.0),)),
      //     ),
      //
      //     Padding(
      //       padding: const EdgeInsets.fromLTRB(150,600,0,0),
      //       child: SizedBox(
      //         child: ElevatedButton(
      //             onPressed: (){},
      //             child: Text("Login")),
      //       ),
      //     )
      //   ],
      // ),


//       floatingActionButton: FloatingActionButton(
//         onPressed: (){
//           showDialog(
//             barrierDismissible: false,
//               context: context,
//               builder: (BuildContext context){
//                 return AlertDialog(
//                   title: Text("Search"),
//                   content: SizedBox(
//                     height: 200.0,
//                     child: Column(
//                       children: [
//                         ListTile(
//                           title: Text("Text 1"),
//
//                         ),
//
//                         ElevatedButton(
//                             onPressed: (){
//                               Navigator.pop(context);
//                             },
//                             child: Text("Back"))
//                       ],
//                     ),
//                   ),
//                 );
//               });
//         },
//         child: Icon(Icons.search),
//
//       ),
//       endDrawer: Drawer(
//
//         child: ListView(
//           children: [
//             DrawerHeader(
//               child: SizedBox(
//                 child: Text("Drawer Header"),
//               ),
//             ),
//
//             ListTile(
//               leading: Icon(Icons.person),
//               title: Text("Profile"),
//               trailing: Icon(Icons.minimize),
//             )
//           ],
//         ),
//       ),
//
//
//       appBar: AppBar(
//         // leading: IconButton(
//         //   icon: Icon(Icons.menu_rounded),
//         //   onPressed: (){
//         //     setState(() {
//         //       context => DropdownButton(
//         //         value: dropvalue,
//         //           items: ,
//         //           onChanged: (){},
//         //       );
//         //     });
//         //   },
//         // ),
//       ),
//       body:Column(
//         children: [
//           // Row(
//           //   children: [
//           //     Padding(
//           //       padding: const EdgeInsets.only(left: 10.0),
//           //       child: Text("Gender:", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0),),
//           //     ),
//           //     Padding(
//           //       padding: EdgeInsets.only(left: 4.0, right: 4.0),
//           //       child: Row(
//           //         children: [
//           //           Radio(
//           //               value: 1,
//           //               groupValue: selectRadio,
//           //               onChanged: (value){
//           //                 setState((){
//           //                   selectRadio = value!;
//           //                 });
//           //               }
//           //           ),
//           //           Text("Male"),
//           //         ],
//           //       ),
//           //     ),
//           //     Radio(
//           //         value: 1,
//           //         groupValue: selectRadio,
//           //         onChanged: (value){
//           //           setState((){
//           //             selectRadio = value!;
//           //           });
//           //         }
//           //     ),
//           //     Text("Male"),
//           //     Radio(
//           //         value: 2,
//           //         groupValue: selectRadio,
//           //         onChanged: (value){
//           //           setState((){
//           //             selectRadio = value!;
//           //           });
//           //         }
//           //     ),
//           //     Text("Female")
//           //   ],
//           // ),
//
//           //
//           // Row(
//           //   children: [
//           //     Checkbox(
//           //         value: selectCheck,
//           //         onChanged:(newvalue){
//           //           setState(() {
//           //             selectCheck = newvalue;
//           //           });
//           //         }
//           //     ),
//           //     Text("Today"),
//           //
//           //   ],
//           // ),
//           // Row(
//           //   children: [
//           //     Checkbox(
//           //         value: tValue,
//           //         onChanged:(newvalue){
//           //           setState(() {
//           //             tValue = newvalue!;
//           //           });
//           //         }
//           //     ),
//           //     Text("Tommorow")
//           //   ],
//           // ),
//           // Row(
//           //   children: [
//           //     Checkbox(
//           //         value: nValue,
//           //         onChanged:(newvalue){
//           //           setState(() {
//           //             nValue = newvalue;
//           //           });
//           //         }
//           //     ),
//           //     Text("Day after tommorow")
//           //   ],
//           // ),
//
//           // DropdowmButton practice
//           // Container(
//           //   decoration: BoxDecoration(
//           //     borderRadius: BorderRadius.circular(10),
//           //   ),
//           //   child: DropdownButton(
//           //     icon: Icon(Icons.menu_rounded),
//           //
//           //     borderRadius: BorderRadius.circular(10.0),
//           //     value: dropvalue,
//           //       items: ['menu', 'Text1','Text2','Text2',].map((e) {
//           //         return DropdownMenuItem(
//           //           value: e,
//           //             child: Text(e));
//           //       }).toList(),
//           //       onChanged:(String? value){
//           //       setState(() {
//           //         dropvalue = value!;
//           //       });
//           //       } ),
//           // ),
//           //
//           // ElevatedButton(
//           //
//           //   child: Text("Button"),
//           //     onPressed: (){
//           //     showModalBottomSheet(
//           //         context: context,
//           //         builder: (BuildContext context){
//           //           return Container(
//           //             height: 300.0,
//           //             width: 400.0,
//           //             child: Column(
//           //               mainAxisAlignment: MainAxisAlignment.center,
//           //               children: [
//           //                 ElevatedButton(
//           //                   child: Text("close"),
//           //                   onPressed: (){
//           //                     Navigator.pop(context);
//           //                   },
//           //                   style: ElevatedButton.styleFrom(
//           //                     side: BorderSide(
//           //                       color: Colors.grey
//           //                     )
//           //                   ),
//           //
//           //
//           //                 ),
//           //               ],
//           //             ),
//           //           );
//           //         },
//           //     );
//           //     },),
//           // SizedBox(
//           //   height: 50.0,
//           //   child: ListView.builder(
//           //     itemCount: alphabet.length,
//           //     itemBuilder: (BuildContext context, int index){
//           //       return Container(
//           //         child: Text('${alphabet[index]}'),
//           //       );
//           //     },
//           //   ),
//           // ),
//
//
//
//         ],
//       ),
//     );
//   }
// }
//







// class MyForm extends StatefulWidget {
//   const MyForm({super.key});
//
//   @override
//   MyFormState createState() {
//     return MyFormState();
//   }
// }
//
// class MyFormState extends State<MyForm> {
//   final _formKey = GlobalKey<FormState>();
//   bool _checkboxValue = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Form(
//         key: _formKey,
//         child: Column(
//           children: [
//             Checkbox(
//               value: _checkboxValue,
//               onChanged: (value) {
//                 setState(() {
//                   _checkboxValue = value!;
//                 });
//               },
//             ),
//             // Add other form fields here...
//             ElevatedButton(
//               onPressed: () {
//                 if (_checkboxValue && _formKey.currentState!.validate()) {
//                   // Navigate to the next page
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => Home_Page()));
//                 }
//               },
//               child: const Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }



// appBar: AppBar(
//   title: Text("Appbar"),
//   actions: [
//     PopupMenuButton(
//       onSelected: (int value){
//         print("On selected ${value}");
//       },
//         itemBuilder: (BuildContext context) => [
//           PopupMenuItem(
//             value: 1,
//               child: Row(
//                 children: [
//                   Icon((Icons.person_2_outlined)),
//                   Text("Profile"),
//                 ],
//               )
//             ),
//           PopupMenuItem(
//             value: 2,
//               child: Row(
//                 children: [
//                   Icon((Icons.edit)),
//                   Text("Edit"),
//                 ],
//               )
//             ),
//           PopupMenuItem(
//             value: 3,
//               child: Row(
//                 children: [
//                   Icon((Icons.delete)),
//                   Text("Delete"),
//                 ],
//               )
//             ),
//
//            ]
//       ),
//   ],
// ),
