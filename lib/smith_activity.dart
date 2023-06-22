import 'package:flutter/material.dart';
class SmithActivity extends StatefulWidget {
  const SmithActivity({Key? key}) : super(key: key);

  @override
  State<SmithActivity> createState() => _SmithActivityState();
}

class _SmithActivityState extends State<SmithActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Text("Smith"),
        ),
        leading: Icon(Icons.arrow_back_ios),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: SizedBox(
          width: 384,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white ,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40 , top: 50),
                  child: Row(
                    children: [
                      Image.asset("images/img_8.png" , width: 30, height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 80),
                        child: Text("Image Problem" , style: TextStyle(color: Colors.black),),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text("image must be no more than 2 MB Max 5 Image" , style: TextStyle(color:Colors.black54),),
                ),

                SizedBox(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20 , left:  20 , top: 40),
                    child: TextField(
                     // controller: _emailController,
                      decoration: InputDecoration(
                          filled: true ,
                          fillColor: Colors.white ,
                          hintText: "More Details About Problem ...",
                          hintStyle: TextStyle(color: Colors.black26),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                              borderSide: BorderSide(color: Colors.red)
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20 , left:  20 , top: 40),
                    child: TextField(
                      // controller: _emailController,
                      decoration: InputDecoration(
                          filled: true ,
                          fillColor: Colors.white ,
                          hintText: "More Details About Location ...",
                          hintStyle: TextStyle(color: Colors.black26),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                              borderSide: BorderSide(color: Colors.red)
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20 , left:  20 , top: 40),
                    child: TextField(
                      // controller: _emailController,
                      decoration: InputDecoration(
                          filled: true ,
                          fillColor: Colors.white ,
                          hintText: "phone Number...",
                          hintStyle: TextStyle(color: Colors.black26),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              ),
                              borderSide: BorderSide(color: Colors.red)
                          )
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 70, 0, 0),
                  child: SizedBox(
                    width: 250,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black
                      ),
                       onPressed: () {
                       },
                        child: Text("ADD ORDER" , style: TextStyle(color: Colors.white , fontSize: 20),)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
