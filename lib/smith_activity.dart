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
                  padding: const EdgeInsets.only(right: 20 , left:  20 , top: 15),
                  child: TextField(
                   // controller: _emailController,
                    decoration: InputDecoration(
                        filled: true ,
                        fillColor: Colors.white ,
                        hintText: "Email",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
