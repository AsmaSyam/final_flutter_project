import 'package:final_flutter_project/controller/dateRepo.dart';
import 'package:final_flutter_project/prfProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeActivity extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("images/img.png"),
              Padding(
                padding: const EdgeInsets.fromLTRB(170, 10, 0, 0),
                child: Image.asset("images/logo.png" , height: 55, width: 55,),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(350, 25, 0, 0),
                child: Icon(Icons.add_alert_outlined , color: Colors.white,),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(38, 90, 0, 0),
                child: Container(
                  color: Colors.white,
                  width: 310,
                  height: 100,
                )
              ) ,
              ],
          ) ,
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Text("Select Service" , style: TextStyle(fontSize: 19 , color: Colors.blue)),
          ) ,

              Consumer<GetProvider>(
                builder: (context, value, child) {
                  return GridView.builder(
                    itemCount: value.list.length ,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 4.0,
                        mainAxisSpacing: 4.0
                    ),
                    itemBuilder: (BuildContext context, int index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            padding: const EdgeInsets.only(top: 14),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.pinkAccent),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 60 ,
                                  height: 60 ,
                                  child: Image.network(
                                    "${value.list[index].icon}",
                                    fit: BoxFit.cover,
                                  ),

                                ),
                                Text(value.list[index].name!)
                              ],
                            )

                        ),
                      );

                    },
                  );
                },

              ),

     ],
      ),
    );
  }

}