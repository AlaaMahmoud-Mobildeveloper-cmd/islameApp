import 'package:flutter/material.dart';
import 'package:islame1_app/core/cach_hlper.dart';
import 'package:islame1_app/screen/hadith_details/hadith_details.dart';
import 'package:islame1_app/screen/home/home_screen.dart';
import 'package:islame1_app/intodaction_screen.dart';

import 'package:islame1_app/screen/sura_details/sura_details.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CachHlper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:CachHlper.getBool("introduction") == true
          ? HomeScreen.routeName
          : IntroductionScreens.routeName,
      routes: {
        IntroductionScreens.routeName:(context)=>IntroductionScreens(),
        HomeScreen.routeName:(context)=>HomeScreen(),
        SuraDetails.routeName:(context)=>SuraDetails(),
        HadithDetails.routeName:(context)=>HadithDetails(),
      },
    );
  }
}

