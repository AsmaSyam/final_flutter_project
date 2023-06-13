import 'package:flutter/material.dart';

import 'on_boarding.dart';
class SplashActivity extends StatefulWidget {
  const SplashActivity({Key? key}) : super(key: key);

  @override
  State<SplashActivity> createState() => _SplashActivityState();
}

class _SplashActivityState extends State<SplashActivity> {

  @override
  void initState(){
    super.initState();
      Future.delayed(Duration(seconds: 3), (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  onBoarding()));
         });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: //
      // Image.asset("images/img.png"),
      Padding(
        padding: const EdgeInsets.fromLTRB(110, 300, 0, 0),
        child: Text("Splash Page" , style: TextStyle(fontSize: 30),),
      ),
      backgroundColor: Colors.blueAccent,
    );
  }
}
