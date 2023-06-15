import 'package:final_flutter_project/home_activity.dart';
import 'package:final_flutter_project/on_boarding3.dart';
import 'package:final_flutter_project/prfProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      Future.delayed(Duration.zero ,() async{
        await Provider.of<GetProvider>(context , listen: false).getData();
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeActivity()));
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
