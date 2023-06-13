import 'package:flutter/material.dart';
class TabService extends StatefulWidget {
  const TabService({Key? key}) : super(key: key);

  @override
  State<TabService> createState() => _TabServiceState();
}

class _TabServiceState extends State<TabService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("TabService")
        ],
      ),
    );
  }
}
