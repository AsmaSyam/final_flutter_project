import 'package:flutter/material.dart';
class TabCustomer extends StatefulWidget {
  const TabCustomer({Key? key}) : super(key: key);

  @override
  State<TabCustomer> createState() => _TabCustomerState();
}

class _TabCustomerState extends State<TabCustomer> {

  final nameController = new TextEditingController();
  final emailController = new TextEditingController();
  final phoneController = new TextEditingController();
  final passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20 , left:  20),
            child: TextField(
              controller: nameController,
              decoration: InputDecoration(
                filled: true ,
                fillColor: Colors.white ,
                hintText: "Full Name",
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
          Padding(
            padding: const EdgeInsets.only(right: 20 , left:  20 , top: 15),
            child: TextField(
              controller: emailController,
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
          Padding(
            padding: const EdgeInsets.only(right: 20 , left:  20 , top: 15),
            child: TextField(
              controller: phoneController,
              decoration: InputDecoration(
                  filled: true ,
                  fillColor: Colors.white ,
                  hintText: "Phone",
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
          Padding(
            padding: const EdgeInsets.only(right: 20 , left:  20 , top: 15),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  filled: true ,
                  fillColor: Colors.white ,
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.black26),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                      borderSide: BorderSide(color: Colors.red)
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}
