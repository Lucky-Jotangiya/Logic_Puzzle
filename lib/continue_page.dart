import 'package:flutter/material.dart';
import 'package:mathpuzzle/win_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/bg.jpg"),fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SafeArea(
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle
                    ),
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(left: 15,top: 15),
                    child: Center(child: Icon(Icons.skip_next,color: Colors.white,)),
                  ),
                  Expanded(
                    child: Center(child: Text("Puzzle 1",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.black87),)),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle
                    ),
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(right: 15,top: 15),
                    child: Center(child: Icon(Icons.warning_amber,color: Colors.white,)),
                  ),
                ],
              ),
            ),
            Container(
              height: 320,
              width: double.infinity,
              margin: EdgeInsets.only(top: 25,left: 15,right: 15),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/p1.png"),fit: BoxFit.fill),
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.only(top: 95,left: 30,right: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 60,
                        width: 220,
                        margin: EdgeInsets.only(left: 5),
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10,left: 5),
                            child: Text("10",style: TextStyle(fontSize: 20),textAlign: TextAlign.left,),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return ThirdPage();
                          },));
                        },
                        child: Container(
                          height: 60,
                          width: 130,
                          child: Card(
                            color: Colors.black54,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                            child: Center(child: Text("submit",style: TextStyle(fontSize: 17,color: Colors.white))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        child: Card(
                          color: Colors.black54,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          child: Center(child: Text("1",style: TextStyle(fontSize: 20,color: Colors.white))),
                        ),
                      ),
                      Container(
                        height: 65,
                        width: 65,
                        child: Card(
                          color: Colors.black54,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          child: Center(child: Text("2",style: TextStyle(fontSize: 20,color: Colors.white))),
                        ),
                      ),
                      Container(
                        height: 65,
                        width: 65,
                        child: Card(
                          color: Colors.black54,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          child: Center(child: Text("3",style: TextStyle(fontSize: 20,color: Colors.white))),
                        ),
                      ),
                      Container(
                        height: 65,
                        width: 65,
                        child: Card(
                          color: Colors.black54,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          child: Center(child: Text("4",style: TextStyle(fontSize: 20,color: Colors.white))),
                        ),
                      ),
                      Container(
                        height: 65,
                        width: 65,
                        child: Card(
                          color: Colors.black54,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          child: Center(child: Text("5",style: TextStyle(fontSize: 20,color: Colors.white))),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 65,
                        width: 65,
                        child: Card(
                          color: Colors.black54,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          child: Center(child: Text("6",style: TextStyle(fontSize: 20,color: Colors.white))),
                        ),
                      ),
                      Container(
                        height: 65,
                        width: 65,
                        child: Card(
                          color: Colors.black54,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          child: Center(child: Text("7",style: TextStyle(fontSize: 20,color: Colors.white))),
                        ),
                      ),
                      Container(
                        height: 65,
                        width: 65,
                        child: Card(
                          color: Colors.black54,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          child: Center(child: Text("8",style: TextStyle(fontSize: 20,color: Colors.white))),
                        ),
                      ),
                      Container(
                        height: 65,
                        width: 65,
                        child: Card(
                          color: Colors.black54,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          child: Center(child: Text("9",style: TextStyle(fontSize: 20,color: Colors.white))),
                        ),
                      ),
                      Container(
                        height: 65,
                        width: 65,
                        child: Card(
                          color: Colors.black54,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          child: Center(child: Text("0",style: TextStyle(fontSize: 20,color: Colors.white))),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
