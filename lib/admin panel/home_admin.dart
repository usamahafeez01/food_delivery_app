import 'package:flutter/material.dart';
import 'package:pizzaapp/admin%20panel/add_food_items.dart';
import 'package:pizzaapp/widget/support_widget.dart';

class HomeAdmin extends StatefulWidget {
  const HomeAdmin({super.key});

  @override
  State<HomeAdmin> createState() => _HomeAdminState();
}

class _HomeAdminState extends State<HomeAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Center(child: Text("Home Admin",style: Appwidget.headerTextFieldStyle(),)),
            SizedBox(height: 50,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddFood()));
              },
              child: Material(
                elevation: 10,
                borderRadius: BorderRadius.circular(10),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.black,borderRadius: BorderRadius.circular(10),
              
                    ),
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.all(6),
                          child: Image.asset("lib/images/salad.png",height: 100,width: 100,fit: BoxFit.cover,),
                        ),
              SizedBox(width: 30,),
                        Text("Add Food Items",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                  ),
              
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
