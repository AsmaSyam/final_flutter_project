import 'package:flutter/material.dart';

import 'on_boarding2.dart';

class onBoarding extends StatefulWidget {
  const onBoarding({Key? key}) : super(key: key);

  @override
  State<onBoarding> createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   void navigationPage() {
  //     if (initState._sharedPreferences.getBool('on_boarding')) {
  //       Navigator.of(context).pushReplacementNamed('/HomeActivity');
  //     } else {
  //       initState.sharedPreferences.setBool('on_boarding', true);
  //       Navigator.of(context).pushReplacementNamed('/onBoarding');
  //     }
  //   }
  // }
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
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  OnBoarding2()));              },
                  child: Text("NEXT")),
            ),
          )


        ],
      ),
    );
  }
}
