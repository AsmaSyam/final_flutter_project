import 'package:flutter/material.dart';

import 'tabs_login/customer.dart';
import 'tabs_login/service.dart';

class RegisterActivity extends StatefulWidget {
  const RegisterActivity({Key? key}) : super(key: key);

  @override
  State<RegisterActivity> createState() => _RegisterActivityState();
}

class _RegisterActivityState extends State<RegisterActivity> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios , color: Colors.white,size: 20,),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body:
        Padding(
            padding: const EdgeInsets.only(top: 74),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Container(
                  color: Colors.white,
                  child: Column(
                      children: const [
                        TabBar(
                            tabs: [
                              Tab(child: Text("Service provider" , style: TextStyle(color: Colors.blue),), ) ,
                              Tab(child: Text("Customer" , style: TextStyle(color: Colors.blue),),)
                            ]
                        ),
                        TabBarView(children: [
                          //tab1
                          Service(),
                          //tab2
                          Customer()
                        ])

                      ]
                  ),
                ),
              ),

            )
        ),

      ),
    );
  }
}
