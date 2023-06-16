import 'package:flutter/material.dart';
class FilledActivity extends StatefulWidget {
  const FilledActivity({Key? key}) : super(key: key);

  @override
  State<FilledActivity> createState() => _FilledActivityState();
}

class _FilledActivityState extends State<FilledActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.close ,color: Colors.black,),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Image.asset("images/img_14.png"),
          ) ,
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 110 , top: 70),
                child: Text("ORDER " ,style: TextStyle(fontSize: 25),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Text("DONE",style: TextStyle(fontSize: 25 , color: Colors.blue)),
              ) ,
              Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Text("!",style: TextStyle(fontSize: 25 , color: Colors.red)),
              )
            ],
          )
          ,
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text("The ORDER has been sent. A technician will"),
          ) ,
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text("contact you"),
          ) ,
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: SizedBox(
              width: 250,
              height: 60,
              child: ElevatedButton(onPressed: () {
              }, child: Text("GO TO HOME" , style: TextStyle(fontSize: 20),)),
            ),
          ),

        ],
      ),
    );
  }
}
