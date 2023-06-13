import 'package:final_flutter_project/home_activity.dart';
import 'package:final_flutter_project/login_activity.dart';
import 'package:flutter/material.dart';

import 'on_boarding2.dart';

class OnBoarding3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Image.asset("images/img_11.png"),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
              child: Text("Fast reservation with technicians" , style: TextStyle(
                fontSize: 24 , color: Colors.blueAccent ,
              ))),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 0),
            child: Text("and craftsmen" , style: TextStyle(
              fontSize: 24 , color: Colors.blueAccent ,
            ),),
          ) ,
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 140, 0, 0),
            child: SizedBox(
              width: 310,
              height: 50,
              child: ElevatedButton(onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginActivity()));
                },
                  child: Text("NEXT")),
            ),
          )


        ],
      ),
    );
  }

}