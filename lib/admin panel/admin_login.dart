import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pizzaapp/admin%20panel/home_admin.dart';
import 'package:pizzaapp/presentation/pages/home.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminState();
}

class _AdminState extends State<AdminLogin> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController usernameController=new TextEditingController();
  TextEditingController userpasswordController=new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffededeb),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 2),
              padding: EdgeInsets.only(top: 45, left: 20, right: 20),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 53, 51, 51), Colors.black],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                borderRadius: BorderRadius.vertical(
                  top:
                      Radius.elliptical(MediaQuery.of(context).size.width, 110),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 60),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    Text(
                      "Let's start with\n Admin! ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 2.2,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              padding:
                                  EdgeInsets.only(left: 20, top: 5, bottom: 5),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(255, 160, 160, 147)),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: TextFormField(
                                  controller: usernameController,
                                  validator: (value){
                                    if(value==null||value.isEmpty){
                                      return "Please Enter User name";
                                    }

                                  },
                                  decoration: InputDecoration(border:InputBorder.none,hintText: "User name",hintStyle: TextStyle(color: Color.fromARGB(225, 160, 160, 147))),

                                ),
                              ),
                            ),
                            Container(
                              padding:
                              EdgeInsets.only(left: 20, top: 5, bottom: 5),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                      Color.fromARGB(255, 160, 160, 147)),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: TextFormField(
                                  controller: userpasswordController,
                                  validator: (value){
                                    if(value==null||value.isEmpty){
                                      return "Please Enter User Password";
                                    }
                                    

                                  },
                                  decoration: InputDecoration(border:InputBorder.none,hintText: "Password",hintStyle: TextStyle(color: Color.fromARGB(225, 160, 160, 147))),
                                ),
                              ),
                            ),
                            SizedBox(height: 40,),
                            GestureDetector(
                              onTap: (){
                                LoginAdmin();
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical:12 ),
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
                                child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                                ),
                              
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  LoginAdmin(){
    FirebaseFirestore.instance.collection("Admin").get().then((snapshot){
snapshot.docs.forEach((result) {
  if(result.data() ['id']!=usernameController.text.trim()){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.orangeAccent,
        content: Text(
          "Your id is not correct",
          style: TextStyle(fontSize: 18.0),
        )));


  } else if(result.data() ['password']!=userpasswordController.text.trim()){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.orangeAccent,
          content: Text(
            "Password in incorrect",
            style: TextStyle(fontSize: 18.0),
          )));


    }else{
    Route route=MaterialPageRoute(builder: (context)=>HomeAdmin());
    Navigator.pushReplacement(context, route);
  }
  }
);
    });
  }
}
