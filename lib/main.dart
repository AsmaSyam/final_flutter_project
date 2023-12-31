import 'package:final_flutter_project/prfProvider.dart';
import 'package:final_flutter_project/profile-activity.dart';
import 'package:final_flutter_project/shared_pref_controller.dart';
import 'package:final_flutter_project/splash_activity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';

import 'filled-activity.dart';
import 'home_activity.dart';
import 'item-details-activity.dart';
import 'login_activity.dart';
import 'more-activity.dart';
import 'on_boarding.dart';
import 'on_boarding2.dart';
import 'on_boarding3.dart';
import 'register_activity.dart';
import 'smith_activity.dart';
import 'tabs/tabCustomer.dart';
import 'tabs_login/customer.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GetProvider(),)
      ],
      child: MaterialApp(
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
        home: SmithActivity(),

      ),
    );
  }
}

