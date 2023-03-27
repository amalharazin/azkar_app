import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:vp18_azkar_app/screens/about_screen.dart';
import 'package:vp18_azkar_app/screens/home_screen.dart';
import 'package:vp18_azkar_app/screens/info_screen.dart';
import 'package:vp18_azkar_app/screens/launch_screen.dart';

void main(){
  runApp( const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate
      ],
      supportedLocales: [
        Locale('ar'),
        Locale('en'),
      ],
      locale: Locale('ar'),
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen':(context)=> const LaunchScreen(),
        '/home_screen':(context) =>   HomeScreen(),
        '/info_screen':(context) =>  InfoScreen(),
      },

    );
  }
}
