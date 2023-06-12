import 'package:flutter/material.dart';

class OnPoarding extends StatelessWidget{
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
            padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
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
                Navigator.pushReplacementNamed(context, '/OnBoarding2');
              },
                  child: Text("NEXT")),
            ),
          )


        ],
      ),
    );
  }

}