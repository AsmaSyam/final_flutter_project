import 'package:flutter/material.dart';
class ItemDetailsActivity extends StatefulWidget {
  const ItemDetailsActivity({Key? key}) : super(key: key);

  @override
  State<ItemDetailsActivity> createState() => _ItemDetailsActivityState();
}

class _ItemDetailsActivityState extends State<ItemDetailsActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Center(child: Text("Item Details")),
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 60),
        // Let the ListView know how many items it needs to build.
        itemCount: 4,
        // Provide a builder function. This is where the magic happens.
        // Convert each item into a widget based on the type of item it is.
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.only(top: 3),
          child:  Container(
            color: Colors.white,
            height: 120,
            width: 200,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text("Order #52001", style: TextStyle(fontSize: 15),),
                ) ,
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 75, 0, 0),
                  child: Text("Service Type ", style: TextStyle(color: Colors.black54)),
                ) ,
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 75, 0, 0),
                  child: Text(": Carpenter", style: TextStyle(color: Colors.indigo)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 280 , top: 20),
                  child: Text("28 Nov 2019" , style: TextStyle(color: Colors.black54),),
                )
              ],
            )
        ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.lightBlueAccent,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.fromLTRB(8, 4, 0, 0),
              child: Image.asset("images/logo.png" , width: 32, height: 32,),
            ),
            label: "Service",

          ) ,
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.fromLTRB(33, 5, 30, 0),
                child: Image.asset("images/img_7.png" , width: 26, height: 30,),
              ),
              label: "Orders"
          ) ,
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.fromLTRB(27, 13, 30, 0),
                child: Image.asset("images/img_8.png" , width: 25, height: 25, color: Colors.white,),
              ),
              label: "User"
          ) ,
          BottomNavigationBarItem(
              icon: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 11, 30, 0),
                  child: Icon(Icons.more_horiz_rounded, color: Colors.white)),
              label: "More"
          ) ,
        ],
      ),
    );
  }
}
