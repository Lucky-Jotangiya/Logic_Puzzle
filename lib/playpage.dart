import 'package:flutter/material.dart';

import 'continue_page.dart';
import 'globalfile.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({super.key});

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: SafeArea(child: Text("Select Level",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),))),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), itemBuilder: (context, index) {

                String levelStatus = Global.statusList[index];
                int level = Global.pref.getInt('level')??0;

                if(levelStatus == "clear"){
                  return InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                        return SecondPage(index);
                      },));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Center(
                          child: Text("${index + 1}",style: TextStyle(fontSize: 20),),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(21),
                          image: DecorationImage(image: AssetImage("images/right.png")),
                        ),
                      ),
                    ),
                  );
                }
                else if(levelStatus == "skip"){
                  return InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                        return SecondPage(index);
                      },));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(21),
                        ),
                        child: Center(
                          child: Text("${index + 1}",style: TextStyle(fontSize: 20),),
                        ),
                      ),
                    ),
                  );
                }
                else{
                  if(index == level){
                    return InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                          return SecondPage(index);
                        },));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(21),
                          ),
                          child: Center(
                            child: Text("${index + 1}",style: TextStyle(fontSize: 20),),
                          ),
                        ),
                      ),
                    );
                  }
                  else{
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            height: 50,
                            width: 50,
                            child: Image.asset("images/lock.png",),),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(21),
                        ),
                      ),
                    );
                  }
                }
              },
                itemCount: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}