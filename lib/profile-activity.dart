import 'package:flutter/material.dart';
class ProfileActivity extends StatefulWidget {
  const ProfileActivity({Key? key}) : super(key: key);

  @override
  State<ProfileActivity> createState() => _ProfileActivityState();
}

class _ProfileActivityState extends State<ProfileActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [Padding(
          padding: const EdgeInsets.all(14.0),
          child: Icon(Icons.settings, size: 30,),
        )] ,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(top: 80),
            child: DecoratedBox(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Container(
                  color: Colors.white70,
                  child: Column(
                    // child:Image.asset("images/img_13.png"),
                    children: [
                      Container(
                        width: 383,
                        height: 200,
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 60 , left: 200),
                              child: Icon(Icons.edit_calendar_outlined),
                            ) ,
                            Text("Seraj Al Mutawa" , style: TextStyle(fontSize: 25),) ,
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text("Riyadh, Saudi Arabia"),
                            ) ,
                          ],
                        ),
                      ) ,
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          height: 300,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 70 , left: 20),
                                    child: Text("Language"),
                                  ) ,
                                  Padding(
                                    padding: const EdgeInsets.only(top: 70 , left: 220),
                                    child: Text("English" , style: TextStyle(color: Colors.black45),),
                                  ) ,
                                  Padding(
                                    padding: const EdgeInsets.only(top: 70 , left: 5),
                                    child: Icon(Icons.navigate_next),
                                  ),
                                ],
                              ) ,
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30 , left: 20),
                                    child: Text("My Rates"),
                                  ) ,
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30 , left: 270),
                                    child: Icon(Icons.navigate_next),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30 , left: 20),
                                    child: Text("Contact us"),
                                  ) ,
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30 , left: 270),
                                    child: Icon(Icons.navigate_next),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30 , left: 20),
                                    child: Text("Share App"),
                                  ) ,
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30 , left: 270),
                                    child: Icon(Icons.navigate_next),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ) ,
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          height: 60,
                          color: Colors.white,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 140),
                                child: Icon(Icons.logout , color: Colors.red,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text("SIGN OUT" , style: TextStyle(color: Colors.blue),),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      )
                    ],
                  ),

                ),
              ),

            )
        ),
      ),
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
