import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();

}

class _LaunchScreenState extends State<LaunchScreen> {

  @override
  void initState(){
    super.initState();
    print('inteState');
    Future.delayed(Duration(seconds: 3),() {
      Navigator.pushReplacementNamed(context, '/home_screen');
      print('future finished');
    },
    );

  }

  @override
  Widget build(BuildContext context) {
    print('BuildFunction');
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: AlignmentDirectional.topStart,
             end: AlignmentDirectional.bottomEnd,
            colors: [
              Colors.pink.shade100,
              Colors.blue.shade100
            ]
          )
        ),
        child: Text('مسبحة الأذكار',
          style: GoogleFonts.arefRuqaa(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),

        ),
      ),
    );
  }
}
