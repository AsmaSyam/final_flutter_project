import 'package:flutter/material.dart';

class HomeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("images/img.png"),
              Padding(
                padding: const EdgeInsets.fromLTRB(170, 10, 0, 0),
                child: Image.asset("images/logo.png" , height: 55, width: 55,),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(350, 25, 0, 0),
                child: Icon(Icons.add_alert_outlined , color: Colors.white,),
              ),
              Container(
                color: Colors.white,
                width: 300,
                height: 100,

              )
            ],
          )
        ],
      ),
    );
  }

}