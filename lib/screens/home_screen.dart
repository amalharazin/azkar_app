import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vp18_azkar_app/screens/about_screen.dart';


class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter =0;
  String _content= 'استغفر الله ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Home'),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => AboutScreen(message: 'About Screen',),));
          },
              icon: Icon(Icons.question_mark)),
          IconButton(onPressed: (){
             Navigator.pushNamed(context, '/info_screen',
                 arguments: {'message':'Welcome in Info'}
             );
          }, icon: Icon(Icons.info)),
          PopupMenuButton<String>(
            onSelected: (String value){
              if(value != _content){
                setState((){
                  _content=value;
                  _counter=0;
                });
              }
            },
              onCanceled: (){},
              itemBuilder:(context){
              return [
                PopupMenuItem(child: Text(_content ),
                  value: 'استغفر الله ',
                  textStyle: GoogleFonts.arefRuqaa(
                    color: Colors.black
                  ),

                  height: 40,
                ),
                PopupMenuDivider(),
                PopupMenuItem(child: Text('سبحان الله '),
                  value: 'سبحان الله  ',
                  textStyle: GoogleFonts.arefRuqaa(
                    color: Colors.black
                  ),
                  height: 40,
                ),
                PopupMenuDivider(),
                PopupMenuItem(child: Text('الحمدلله '),
                  value: 'الحمدلله ',
                  textStyle: GoogleFonts.arefRuqaa(
                    color: Colors.black
                  ),
                  height: 40,
                ),

              ];
              } )
        ],
      ),
      body: DecoratedBox(
        decoration: BoxDecoration(

          gradient: LinearGradient(
            colors: [
              Color(0xFF54BAB9),
              Color(0xFF9ED2C6),
            ]
          )

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 70,
                height: 70,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsetsDirectional.only(start: 30,end: 30,bottom: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                   Expanded(
                       child: Text('استغفر الله ',
                         style: GoogleFonts.arefRuqaa(
                           fontSize: 24
                         ),
                         textAlign: TextAlign.center,)),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.teal,
                    alignment: Alignment.center,
                    child: Text(_counter.toString(),
                      style: GoogleFonts.arefRuqaa(
                        fontSize: 18,
                        height: 1,
                        color: Colors.white
                      ),

                    ),
                  )
                ],
              ),
            ),
            // SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [

                  Expanded(
                    flex: 2,
                      child: ElevatedButton(onPressed: (){
                        setState((){
                          _counter +=1;
                        });
                      },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.teal.shade700
                          ),

                          child: Text('تسبيح',
                            style: GoogleFonts.arefRuqaa(
                                height: 1
                            ),

                          ))),

                  Expanded(

                      child: ElevatedButton(onPressed: (){
                        setState((){
                          _counter =0;
                        });


                      },
                          style: ElevatedButton.styleFrom(
                           primary: Colors.orange.shade300,
                          ),

                          child: Text('اعادة',
                            style: GoogleFonts.arefRuqaa(
                                height: 1
                            ),

                          ))),
                ],
              ),
            ),


          ],

        ),
      ),
        floatingActionButton: FloatingActionButton(
         onPressed: (){
           setState((){
              ++ _counter;
           });
           
           
    },
    child: Icon(Icons.add),
    ),

    );
  }
}
