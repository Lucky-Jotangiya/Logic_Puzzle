import 'package:flutter/material.dart';
import 'package:mathpuzzle/main.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/winbg.jpg"),fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Puzzle 1 Complated",style: TextStyle(fontSize: 30,fontFamily: "font-1",fontWeight: FontWeight.bold),),

            SizedBox(height: 10,),

            Container(
              height: 200,
              width: 200,
              child: Image.asset("images/trophy.png",fit: BoxFit.fill,),
            ),

            SizedBox(height: 30,),

            OutlinedButton(onPressed: () {
              Navigator.pop(context);
            }, child: Text("Continue",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: "font-1",color: Colors.black),)),

            SizedBox(height: 10,),

            OutlinedButton(onPressed: () {
              Navigator.pop(context);
              Navigator.pop(context);
            }, child: Text("Main menu",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: "font-1",color: Colors.black),))
          ],
        ),
      ),
    );
  }
}
