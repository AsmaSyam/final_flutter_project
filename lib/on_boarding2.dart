import 'package:flutter/material.dart';

class OnBoarding2 extends StatelessWidget{
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
            padding: const EdgeInsets.fromLTRB(2, 70, 0, 0),
            child: Image.asset("images/img_12.png"),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
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
              },
                  child: Text("NEXT")),
            ),
          )


        ],
      ),
    );
  }

}