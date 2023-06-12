import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {

  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context, '/login_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}