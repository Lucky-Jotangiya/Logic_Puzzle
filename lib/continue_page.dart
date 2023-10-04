import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mathpuzzle/globalfile.dart';
import 'package:mathpuzzle/main.dart';
import 'package:mathpuzzle/win_page.dart';

class SecondPage extends StatefulWidget {

  int level;
  SecondPage(this.level);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  String display = "";
  List ansList = ['1','2','3','4','5','6','7','8','9','10','11','12'];

  Widget buildButton(String text){
    return InkWell(
      onTap: () {
        setState(() {
          display = display + text;
        });
      },
      child: Container(
        height: 65,
        width: 65,
        child: Card(
          color: Colors.black54,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Center(child: Text(text,style: TextStyle(fontSize: 20,color: Colors.white))),
        ),
      ),
    );
  }

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
                  InkWell(
                    onTap: () {
                        Global.statusList[widget.level] = "skip";
                        Global.pref.setString('status${widget.level}', 'skip');
                        setState(() {
                           widget.level++;
                        });
                        Global.pref.setInt('level', widget.level);
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                          return SecondPage(widget.level);
                        },));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle
                      ),
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(left: 15,top: 15),
                      child: Center(child: Icon(Icons.skip_next,color: Colors.white,)),
                    ),
                  ),
                  Expanded(
                    child: Center(child: Text("Puzzle ${widget.level + 1}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.black87),)),
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
                image: DecorationImage(image: AssetImage("images/p${widget.level + 1}.png"),fit: BoxFit.fill),
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
                        width: 222,
                        margin: EdgeInsets.only(left: 5),
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15,left: 5),
                            child: Text(display,style: TextStyle(fontSize: 20),textAlign: TextAlign.left,),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          display = display.substring(0,display.length-1);
                          setState(() {
                          });
                        },
                        onLongPress: () {
                          display = "";
                          setState(() {
                          });
                        },
                        child: Container(
                          height: 65,
                          width: 65,
                          child: Card(
                            color: Colors.black54,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                            child: Center(child: Text("<-",style: TextStyle(fontSize: 17,color: Colors.white))),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if(display==ansList[widget.level]){
                            String levelStatus = Global.statusList[widget.level];
                            if(levelStatus == "clear"){
                              setState(() {
                                display="";
                                widget.level++;
                              });
                              Global.pref.setInt('level', widget.level);
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return ThirdPage();
                              },));
                            }
                            else if(levelStatus == "skip"){
                              Global.statusList[widget.level] = "clear";
                              Global.pref.setString('status${widget.level}', 'clear');
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return ThirdPage();
                                },));
                              // win
                            }
                            else if(levelStatus == "pending"){
                              Global.statusList[widget.level] = "clear";
                              Global.pref.setString('status${widget.level}', 'clear');
                              setState(() {
                                display="";
                                widget.level++;
                              });
                              Global.pref.setInt('level', widget.level);
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return ThirdPage();
                              },));
                              // win
                            }
                          }
                          else{
                            Fluttertoast.showToast(msg: "Wrong",
                            backgroundColor: Colors.white,
                              textColor: Colors.black,
                              gravity: ToastGravity.CENTER,
                            );
                          }
                        },
                        child: Container(
                          height: 65,
                          width: 65,
                          child: Card(
                            color: Colors.black54,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                            child: Center(child: Text("ok",style: TextStyle(fontSize: 17,color: Colors.white))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildButton("1"),
                      buildButton("2"),
                      buildButton("3"),
                      buildButton("4"),
                      buildButton("5"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildButton("6"),
                      buildButton("7"),
                      buildButton("8"),
                      buildButton("9"),
                      buildButton("0"),
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


class PlayPage extends StatefulWidget {
  const PlayPage({super.key});

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {

  List page1 = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
  List page2 = [21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40];

  bool clear = false;
  bool lock = true;
  bool skip = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: SafeArea(child: Text("Select Level",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),))),
          
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: PageView(
                children: [
                  GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          if(page1[index] == 1){
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return SecondPage(0);
                            },));
                          }
                          else if(page1[index] == 2){
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return SecondPage(1);
                            },));
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(21),
                          ),
                          child: lock ? Center(child: Image.asset("name"),) : Center(child: Text("${page1[index]}",style: TextStyle(fontSize: 15,color: Colors.white),)),
                        ),
                      ),
                    );
                  },
                    itemCount: page1.length,
                  ),

                  GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(21),
                        ),
                        child: Center(child: Text("${page2[index]}",style: TextStyle(fontSize: 16,color: Colors.white),)),
                      ),
                    );
                  },
                    itemCount: page2.length,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

