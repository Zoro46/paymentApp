import 'package:assignment_1/login_screen.dart';
import 'package:assignment_1/practice.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class Sign_Up_Page extends StatefulWidget {
  const Sign_Up_Page({super.key});

  @override
  State<Sign_Up_Page> createState() => _Sign_Up_PageState();
}



class _Sign_Up_PageState extends State<Sign_Up_Page> {
  int selectGender = 0;
  bool valuefirst = false;
  bool valuesecond = false;
  String dropvalue = "None";
  bool isChecked = false;
  bool termsChecked = false;

  GlobalKey<FormState> registerkey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: Form(
        key: registerkey,
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/signUp.jpg'),
                  height: 130.0,
                  width: 400.0,
                ),

                Padding(
                  padding: const EdgeInsets.all(27.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Register", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),),
                        Text("Enter your personal Information", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),),
                        SizedBox(height: 12.0,),
                        Text("Username", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600),),
                        SizedBox(
                          height: 40.0,
                          width: 400,
                          child: TextFormField(
                            controller: usernameController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius:BorderRadius.circular(32.0),),
                                labelText: "Enter your name"
                            ),
                            style: TextStyle(color: Colors.grey),
                            validator: (String? value){
                              if(value!.isEmpty){
                                return "Enter a username";
                              }
                            },
                          ),
                        ),
                        SizedBox(height: 12.0,),
                        Text("Email", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600),),
                        SizedBox(
                          height: 40.0,
                          width: 400,
                          child: TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius:BorderRadius.circular(32.0),),
                                labelText: "Enter your email id"
                            ),
                            style: TextStyle(color: Colors.grey),
                            validator: (String? value){
                              if(value!.isEmpty){
                                return "Enter the email";
                              }
                            },
                          ),
                        ),
                        SizedBox(height: 12.0,),
                        Text("Password", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600),),
                        SizedBox(
                          height: 40.0,
                          width: 400,
                          child: TextFormField(
                            controller: passwordController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius:BorderRadius.circular(32.0) ),
                                labelText: "Password",
                                suffixIcon: Icon(Icons.remove_red_eye_outlined),
                            ),
                            style: TextStyle(color: Colors.grey,fontWeight: FontWeight.normal,),
                            validator: (String? value){
                              if(value!.isEmpty){
                                return "Enter a password";
                              }
                            },
                          ),
                        ),
                        SizedBox(height: 5.0,),

                        // Gender selection buttons
                        Text("Gender : ", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600),),
                        Row(
                          children: [
                            Radio(
                                value: 1,
                                groupValue: selectGender,
                                onChanged: (value){
                                  setState(() {
                                    selectGender= value!;
                                  });
                                },
                            ),
                            Text("Male"),
                            Radio(
                                value: 2,
                                groupValue: selectGender,
                                onChanged: (value){
                                  setState(() {
                                    selectGender= value!;
                                  });
                                },
                            ),
                            Text("Female"),
                          ],
                        ),

                        SizedBox(height: 2.0,),

                        // Language selection buttons
                        Text("Language : ", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600),),
                        Row(
                          children: [
                            Checkbox(
                                value: valuefirst,
                                onChanged: (value){
                              setState(() {
                                valuefirst = value!;
                              });
                            }),
                            Text("Hindi"),
                            Checkbox(
                                value: valuesecond,
                                onChanged: (value){
                                  setState(() {
                                    valuesecond = value!;
                                  });
                                }),
                            Text("English"),
                          ],
                        ),

                        // Dropdown option for coding languages
                        Row(
                          children: [
                            Text("Programming language : ", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600),),
                            DropdownButtonHideUnderline(
                              child: Container(
                                height:  35.0,
                                width: 125.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(32.0),
                                  border: Border.all(color: Colors.grey, style: BorderStyle.solid, width: 0.80)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0, right: 8.0),
                                  child: DropdownButton(
                                    value: dropvalue,
                                      items: ["None","Flutter","PHP", "Java", "Python","Javascript"].map((e){
                                        return DropdownMenuItem(
                                            value: e,
                                            child: Text(e));
                                      }).toList(),
                                      onChanged: (String? value){
                                      if (value != null){
                                        setState(() {
                                          dropvalue = value;
                                        });
                                      }
                                      },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0,),

                        //  Check Box for agreement of term's and conditions

                        Row(
                          children: [
                           Checkbox(
                               value: termsChecked,
                               onChanged: (value){
                                 setState(() {
                                   termsChecked = value!;
                                 });
                               }),
                            Text("I Agree to Term's & Conditions"),


                            // Checkbox(
                            //     value: isChecked,
                            //     onChanged: (value){
                            //       setState(() {
                            //         isChecked = value!;
                            //       });
                            //     }),

                          ],
                        ),


                        // Register Button
                        SizedBox(
                          height: 50.0,
                          width: 400.0,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: Colors.blue
                            ),
                            onPressed: (){
                              // When term's are agreed and required fields are filled
                              if(termsChecked && registerkey.currentState!.validate()) {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context){
                                      return AlertDialog(
                                        title: Text("Confirmed",),
                                        content: SizedBox(
                                          height: 200.0,
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(top: 150.0),
                                                child: ElevatedButton(
                                                  child: Text("Submit"),
                                                    onPressed: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home_Page()));
                                                    },
                                                    ),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    });
                              }

                              // When term's are not agreed
                              if(!termsChecked){
                                // Shows an error
                                final snackBar = SnackBar(
                                    content: Text("Error"),
                                    duration: Duration(seconds: 4),
                                    action: SnackBarAction(
                                      label: "",
                                      onPressed: (){},
                                      textColor: Colors.white70,
                                    ),
                                  backgroundColor: Color(0xffFF7878),
                                );
                                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                              }
                              
                              else{
                                return null;
                              }

                            },
                            child: Text("Register",style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),

                        SizedBox(height: 15.0,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(child: Divider(color: Colors.grey,)),
                            Text("Or Sign up with"),
                            Expanded(child: Divider(color: Colors.grey,)),
                          ],
                        ),

                        SizedBox(height: 10.0),

                        Padding(
                          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey,),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                height: 50.0,
                                width: 60.0,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/search.png',),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey,),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                height: 50.0,
                                width: 60.0,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/facebook.png'),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey,),
                                    borderRadius: BorderRadius.circular(10)
                                ),
                                height: 50.0,
                                width: 60.0,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/apple.png'),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 5.0,),
                        // Navigation to login page
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have a account ?"),
                            TextButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (Context) => Login_page(),
                                  ),
                                  );
                                },
                                child: Text("Login")
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],

            ),
          ),
        ),
      ),
    );
  }
}


// showModalBottomSheet<void>(
// context: context,
// builder: (BuildContext context){
// return StatefulBuilder(
// builder: (context, setState){
// return Container(
// width: 400.0,
// height: 150.0,
// decoration: BoxDecoration(
// color: Color(0xffF0EBE3),
// borderRadius: BorderRadius.circular(20.0)
// ),
// child: Column(
// children: [
// Row(
// children: [
// Checkbox(
// value: isChecked,
// onChanged: (value){
// setState(() {
// isChecked = value!;
// });
// }),
// Text("I agree The term's & Conditions ", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w400, fontSize: 15.0),),
// ],
// ),
//
// ElevatedButton(
// onPressed: (){
// Navigator.pop(context);
// final snackbar = SnackBar(
// action: SnackBarAction(
// label: 'Undo',
// onPressed: (){},
// ),
// backgroundColor: Color(0xffC5EBAA).withOpacity(1),
// content: Text("Registeration Completed!! ", style: TextStyle(color: Colors.black),),
//
// );
// ScaffoldMessenger.of(context).showSnackBar(snackbar);
// },
// child: Text("Submit"))
// ],
// ),
// );
// }
// );
// }
// );



// showModalBottomSheet(
//     context: context,
//     builder: (BuildContext context){
//       return StatefulBuilder(
//         builder: (context, setState){
//           return Container(
//             width: 400.0,
//             height: 150.0,
//             decoration: BoxDecoration(
//                 color: Color(0xffF0EBE3),
//                 borderRadius: BorderRadius.circular(20.0)
//             ),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     Checkbox(
//                         value: isChecked,
//                         onChanged: (value){
//                           setState(() {
//                             isChecked = value!;
//                           });
//                         }),
//                     // Checkbox(
//                     // //     value: isChecked,
//                     //     onChanged:(newvalue){
//                     //       setState(() {
//                     //         isChecked = newvalue!;
//                     //       });
//                     //     }
//                     // ),
//                     Text("Confirm Registeration", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w400, fontSize: 15.0),),
//                   ],
//                 ),
//
//                 ElevatedButton(
//                     onPressed: (){
//                       Navigator.pop(context);
//                       final snackbar = SnackBar(
//                         action: SnackBarAction(
//                           label: 'Undo',
//                           onPressed: (){},
//                         ),
//                         backgroundColor: Color(0xffC5EBAA).withOpacity(1),
//                         content: Text("Registeration Completed!! ", style: TextStyle(color: Colors.black),),
//
//                       );
//                       ScaffoldMessenger.of(context).showSnackBar(snackbar);
//                     },
//                     child: Text("Submit"))
//               ],
//             ),
//           );
//         }
//       );
//     }
// );