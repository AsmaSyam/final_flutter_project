import 'package:final_flutter_project/controller/api_controller.dart';
import 'package:final_flutter_project/controller/api_response.dart';
import 'package:final_flutter_project/controller/user.dart';
import 'package:final_flutter_project/tabs_login/customer.dart';
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
          ) ,
          Padding(
            padding: const EdgeInsets.fromLTRB(160, 70, 0, 0),
            child: SizedBox(
              width: 160,
              height: 60,
              child: ElevatedButton(
                  onPressed: ()async => await _prefFormRegister()
                 , child: Text("SIGN UP" , style: TextStyle(color: Colors.white , fontSize: 20),)),
            ),
          )
        ],
      ),
    );
  }

  Future<void> _prefFormRegister()async {
    if(_checkData()){
      await _register();
    }
  }

  bool _checkData(){
    if(emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        phoneController.text.isNotEmpty &&
        nameController.text.isNotEmpty){
      return true ;
    }
    return false ;
  }
  Future<void> _register() async{
    ApiResponse response = await ApiController().register(user1: user);
    print(response.data);
    if(response.success!){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Customer()));
    }else{
      const snackBar = SnackBar(
        content: Text("عذراً هذا البريد مستخدم من قبل"
        ),
      );

      // Find the ScaffoldMessenger in the widget tree
      // and use it to show a SnackBar.
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

  }

  User get user{
    User user1 = User();
    user1.email = emailController.text ;
    user1.password = passwordController.text ;
    user1.name = nameController.text ;
    user1.phone = phoneController.text ;
    return user1 ;
  }
}
