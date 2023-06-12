import 'package:final_flutter_project/splash_activity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'home_activity.dart';
import 'on_boarding.dart';
import 'on_boarding2.dart';
import 'on_boarding3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate ,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],

      //هنا بيأخد لغة الجهاز التلقائية en مش علشانها بالاول حتى لو كانت في الاخر
      supportedLocales: [
        Locale('ar') ,
        Locale('en')

      ],
      //هنا لما نحط اشي برا بياخذه هوا وفي حال ما كانت هذه اللغة موجودة فيأخذ سعيتها بالترتيب من فوق en
       locale: Locale('en'),

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeActivity(),
    );
  }
}

