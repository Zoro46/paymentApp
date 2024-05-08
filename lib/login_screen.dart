import "package:assignment_1/sign_up.dart";
import"package:flutter/material.dart";

class Login_page extends StatelessWidget {
  const Login_page({super.key});

  @override
  Widget build(BuildContext context) {

    GlobalKey<FormState> formkey = GlobalKey<FormState>();

    TextEditingController passwordController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    var showPassword = true;


    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_rounded,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Image(
                  image: AssetImage('assets/login_image.jpg'),
                  height: 275,
                width:  400,),
          
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Login", style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.w600),),
                        Text("Login to continue using the app", style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),),
                        SizedBox(height: 15.0,),
                        Text("Email", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),),
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius:BorderRadius.circular(32.0),),
                            labelText: "Enter your email"
                          ),
                          style: TextStyle(color: Colors.black),
                          validator: (String? value){

                            if (value!.isEmpty){
                              return "Enter email address";
                            }
                          },

                        ),
                        SizedBox(height: 15.0,),
                        Text("Password", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),),
                        TextFormField(
                          controller: passwordController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius:BorderRadius.circular(32.0) ),
                            labelText: "Enter password",
                            suffixIcon: IconButton(
                              onPressed: (){},
                                icon: Icon(Icons.remove_red_eye_outlined))
                          ),
                          style: TextStyle(color: Colors.black),
                          validator: (String? value){
                            if(value!.isEmpty){
                              return "There should a password";
                            }
                            if(value.length<6){
                              return "Password should be of minimum 9 characters";
                            }
                            return null;
                          },
                        ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           TextButton(
                               onPressed: (){},
                               child: Text("Forgot Password?", style: TextStyle(color: Colors.black),)
                           ),
                         ],
                       ),
          
                        // Login Button
                        Container(
                          height: 50.0,
                          width: 400.0,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Colors.blue
                            ),
                            onPressed: (){

                              if(formkey.currentState!.validate()){
                                return null;
                              }
          
                            },
                            child: Text("Log In",style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 5.0,),
          
                        Row(
                          children: [
                            Expanded(child: Divider(color: Colors.grey,)),
                            Text("Or Login with"),
                            Expanded(child: Divider(color: Colors.grey,)),
                          ],
                        ),
                        SizedBox(height: 13.0,),
          
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,),
                                borderRadius: BorderRadius.circular(10)
                              ),
                              height: 60.0,
                              width: 90.0,
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
                              height: 60.0,
                              width: 90.0,
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
                              height: 60.0,
                              width: 90.0,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset('assets/apple.png'),
                              ),
                            ),
                          ],
                        ),
          
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have a account ?",),
                            TextButton(
                                child: Text("Register here"),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (Context) => Sign_Up_Page(),
                                  ),
                                  );
                                },
          
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


