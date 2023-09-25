import 'package:flutter/material.dart';
import 'package:mathpuzzle/continue_page.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/mainbg.jpg",),fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Math Puzzle",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black87,fontFamily: "font-4"),),
            Center(
              child: Container(
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/board.png"),fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  margin: EdgeInsets.all(50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: () {

                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return SecondPage();
                        },));

                      }, child: Text("Continue",style: TextStyle(fontSize: 30,color: Colors.white,fontFamily: "font-1",fontWeight: FontWeight.bold),)),

                      SizedBox(height: 20,),

                      TextButton(onPressed: () {

                      }, child: Text("Play",style: TextStyle(fontSize: 30,color: Colors.white,fontFamily: "font-1",fontWeight: FontWeight.bold),)),

                      SizedBox(height: 20,),

                      TextButton(onPressed: () {

                      }, child: Text("Buy Pro",style: TextStyle(fontSize: 30,color: Colors.white,fontFamily: "font-1",fontWeight: FontWeight.bold),)),
                    ],
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

