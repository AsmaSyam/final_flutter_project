
import 'package:final_flutter_project/controller/api_controller.dart';
import 'package:final_flutter_project/controller/api_response.dart';
import 'package:final_flutter_project/home_activity.dart';
import 'package:flutter/material.dart';

class Customer extends StatefulWidget {
  const Customer({Key? key}) : super(key: key);

  @override
  State<Customer> createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  final _emailController = new TextEditingController();
  final _passwordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20 , left:  20 , top: 15),
            child: TextField(
              controller: _emailController,
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
              controller: _passwordController,
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
              onPressed: ()async => await _prefFormLogin()
              , child: Text("SIGN UP" , style: TextStyle(color: Colors.white , fontSize: 20),)),
            ),
          )
        ],
      ),
    );
  }
       Future<void> _prefFormLogin()async {
       if(_checkData()){
         await _login();
     }
    }

      bool _checkData(){
       if(_emailController.text.isNotEmpty &&
          _passwordController.text.isNotEmpty &&
          _passwordController.text.length >= 6 &&
          _passwordController.text.length <= 30){
         return true ;
      }
       return false ;
   }
    Future<void> _login() async{
    ApiResponse response = await ApiController().login(email:_emailController.text , password: _passwordController.text);
    if(response.success!){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeActivity()));
    }
   }
   }
