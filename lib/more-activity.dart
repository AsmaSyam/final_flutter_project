import 'package:flutter/material.dart';
class MoreActivity extends StatefulWidget {
  const MoreActivity({Key? key}) : super(key: key);

  @override
  State<MoreActivity> createState() => _MoreActivityState();
}

class _MoreActivityState extends State<MoreActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:Icon(Icons.arrow_back_ios_sharp) ,
          title: Padding(
            padding: const EdgeInsets.only(left: 95),
            child: Text("More"),
          ),

      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
    child: DecoratedBox(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(25),
    ),
    child: Center(
    child: Container(
    color: Colors.white,
    child: Column(
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40 , left: 20),
            child: Text("Change Password"),
          ) ,
          Padding(
            padding: const EdgeInsets.only(top: 40 , left: 210),
            child: Icon(Icons.navigate_next),
          ),
        ],
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40 , left: 20),
            child: Text("FAQ's"),
          ) ,
          Padding(
            padding: const EdgeInsets.only(top: 40 , left: 285),
            child: Icon(Icons.navigate_next),
          ),
        ],
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40 , left: 20),
            child: Text("About App"),
          ) ,
          Padding(
            padding: const EdgeInsets.only(top: 40 , left: 255),
            child: Icon(Icons.navigate_next),
          ),
        ],
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40 , left: 20),
            child: Text("Terms & Conditions"),
          ) ,
          Padding(
            padding: const EdgeInsets.only(top: 40 , left: 195),
            child: Icon(Icons.navigate_next),
          ),
        ],
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40 , left: 20),
            child: Text("Privacy Policy"),
          ) ,
          Padding(
            padding: const EdgeInsets.only(top: 40 , left: 230),
            child: Icon(Icons.navigate_next),
          ),
        ],
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40 , left: 20),
            child: Text("Rate App"),
          ) ,
          Padding(
            padding: const EdgeInsets.only(top: 40 , left: 260),
            child: Icon(Icons.navigate_next),
          ),
        ],
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40 , left: 20),
            child: Text("Delete Account"),
          ) ,
          Padding(
            padding: const EdgeInsets.only(top: 40 , left: 220),
            child: Icon(Icons.navigate_next),
          ),
        ],
      )
    ],
    ),

    ) )
     ) ) ,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.lightBlueAccent,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 0, 0),
              child: Image.asset("images/logo.png" , width: 32, height: 32,),
            ),
            label: "Service",

          ) ,
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.fromLTRB(33, 5, 30, 0),
                child: Image.asset("images/img_7.png" , width: 26, height: 30,),
              ),
              label: "Orders"
          ) ,
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.fromLTRB(27, 13, 30, 0),
                child: Image.asset("images/img_8.png" , width: 25, height: 25, color: Colors.white,),
              ),
              label: "User"
          ) ,
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.fromLTRB(25, 11, 30, 0),
                    child: Icon(Icons.more_horiz_rounded, color: Colors.white)),
              label: "More"
          ) ,
        ],
      ),
    );
  }
}
