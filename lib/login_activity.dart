
import 'package:flutter/material.dart';

import 'tabs/tabCustomer.dart';
import 'tabs/tabService.dart';
import 'tabs_login/customer.dart';
class LoginActivity extends StatefulWidget {
  const LoginActivity({Key? key}) : super(key: key);

  @override
  State<LoginActivity> createState() => _LoginActivityState();
}

class _LoginActivityState extends State<LoginActivity> {
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
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Image.asset("images/logo.png" , width: 100, height: 100,),
              ),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.only(top: 80),
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
                                Expanded(
                                  child: TabBarView(children: [
                                    //tab1
                                    TabService(),
                                    //tab2
                                    Customer()
                                  ]),
                                )

                              ]
                          ),
                        ),
                      ),

                    )
                ),
              ),
            ],
          )

            )


      );
  }
}
