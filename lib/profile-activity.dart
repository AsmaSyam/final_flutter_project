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
      body: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: DecoratedBox(
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Container(
                color: Colors.white70,
                child: Column(
                  children: [
                    Container(
                      width: 383,
                      height: 200,
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Positioned(
                            top: -30,
                            child:Image.asset("images/img_13.png"),

                          ),
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
                    )
                  ],
                ),

              ),
            ),

          )
      ),
    );
  }
}
