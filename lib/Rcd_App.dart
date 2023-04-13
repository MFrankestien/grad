/*import 'package:flutter/material.dart';
import 'package:external_app_launcher/external_app_launcher.dart';



class MyOne extends StatelessWidget{

  const MyOne({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home:
      Scaffold(
        appBar: AppBar(title: const Text("SYM ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,fontStyle: FontStyle.italic,color:Color.fromARGB(255, 175, 61, 118)),),
          leading:Image.asset('assets/images/icon5.jpg',width: 35,height: 25,
          ),
          backgroundColor: const Color.fromARGB(255, 12, 179, 140),
          actions:  [IconButton(icon:const Icon (Icons.arrow_back,size:35.0,color: Color.fromARGB(255, 201, 111, 26)),onPressed:(){})

          ],
        ),
        body: Container(
          alignment: Alignment.center,
          padding:const EdgeInsets.all(15.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget> [
                    SizedBox(
                      width: 370.0,
                      height:100.0,
                      child: ElevatedButton(onPressed:( ){LaunchApp.openApp(
                          androidPackageName: 'co.tensorsight',

                          openStore: true
                      );},
                        child:const Text('Be My Eyes For IOS',style: TextStyle(fontSize: 32.0 ,
                            fontStyle: FontStyle.italic,fontWeight:FontWeight.w600),),

                        style: ElevatedButton.styleFrom(primary: Colors.amber,


                        ), ),),]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget> [
                    SizedBox(
                      width: 370.0,
                      height:100.0,
                      child:ElevatedButton(onPressed:(){LaunchApp.openApp(
                          androidPackageName: 'com.bemyeyes.bemyeyes',

                          openStore: true
                      );},
                        child:const Text('Be My Eyes For ANDROID',style:  TextStyle(fontSize: 32.0 ,
                            fontStyle: FontStyle.italic,fontWeight:FontWeight.w600),),

                        style: ElevatedButton.styleFrom(primary:const Color.fromARGB(
                            255, 191, 52, 206),

                        ), ),),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget> [
                    SizedBox(
                      width: 370.0,
                      height:100.0,
                      child: ElevatedButton(onPressed:(){LaunchApp.openApp(
                          androidPackageName: 'co.tensorsight',

                          openStore: true
                      );},
                        child:const Text('AIRA For IOS',style:  TextStyle(fontSize: 32.0 ,
                            fontStyle: FontStyle.italic,fontWeight:FontWeight.w600),),

                        style: ElevatedButton.styleFrom(primary: const Color.fromARGB(
                            255, 62, 226, 187),

                        ), ),),]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget> [
                    SizedBox(
                      width: 370.0,
                      height:100.0,
                      child:ElevatedButton(onPressed:(){LaunchApp.openApp(
                          androidPackageName: 'io.aira.smart',

                          openStore: true
                      );},
                        child:const Text('AIRA For ANDROID',style:  TextStyle(fontSize: 32.0 ,
                            fontStyle: FontStyle.italic,fontWeight:FontWeight.w600),),

                        style: ElevatedButton.styleFrom(primary: const Color.fromARGB(
                            255, 201, 80, 108),

                        ), ),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget> [
                    SizedBox(
                      width: 370.0,
                      height:100.0,
                      child: ElevatedButton(onPressed:(){LaunchApp.openApp(
                          androidPackageName: 'co.tensorsight',

                          openStore: true
                      );},
                        child:const Text('Seeing Ai For IOS',style:  TextStyle(fontSize: 32.0 ,
                            fontStyle: FontStyle.italic,fontWeight:FontWeight.w600),),

                        style: ElevatedButton.styleFrom(primary: const Color.fromARGB(
                            255, 133, 229, 64),

                        ), ),),]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget> [
                    SizedBox(
                      width: 370.0,
                      height:100.0,
                      child:ElevatedButton(onPressed:(){LaunchApp.openApp(
                          androidPackageName: 'com.google.android.apps.accessibility.reveal',

                          openStore: true
                      );},
                        child:const Text('Google Look Out For ANDROID',style:  TextStyle(fontSize: 32.0 ,
                            fontStyle: FontStyle.italic,fontWeight:FontWeight.w600),),

                        style: ElevatedButton.styleFrom(primary: const Color.fromARGB(
                            255, 213, 33, 40),

                        ), ),),
                  ],
                ),

              ]),


        ),
      ),
    );}}*/

import 'package:flutter/material.dart';
import 'package:external_app_launcher/external_app_launcher.dart';
//import 'package:sym_project_1/page_one.dart';

class MyOny1 extends StatelessWidget {
  const MyOny1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPage4(),
    );
  }
}

Widget buttons(color, image, text, press) {
  return InkWell(
      onTap: press,
      child: Container(
        height: 100,
        width: 370,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              image,
              height: 45,
              width: 55,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              width: 12,
            ),
            Text(text,
                style: const TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600)),
          ],
        ),
      ));
}

class MyPage4 extends StatelessWidget {
  const MyPage4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "SYM ",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
                color: Color.fromARGB(255, 175, 61, 118)),
          ),
          leading: Image.asset(
            'assets/icons9.png',
            width: 70,
            height: 45,
          ),
          backgroundColor: const Color.fromARGB(255, 12, 179, 140),
          actions: [
            IconButton(
                icon: const Icon(Icons.arrow_forward,
                    size: 45.0, color: Color.fromARGB(255, 206, 6, 69)),
                onPressed: () {
                  //controller.toggle();
                })
          ],
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            buttons(const Color.fromARGB(255, 242, 125, 246),
                'assets/icons8.png', 'Be My Eyes For IOS', () {}),
          ]),
          const SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            buttons(const Color.fromARGB(255, 63, 227, 202),
                'assets/icons8.png', 'Be My Eyes For ANDROID', () {
              LaunchApp.openApp(
                  androidPackageName: 'com.bemyeyes.bemyeyes', openStore: true);
            }),
          ]),
          const SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            buttons(const Color.fromARGB(255, 198, 24, 58), 'assets/icons7.png',
                'AIRA For IOS', () {}),
          ]),
          const SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            buttons(const Color.fromARGB(255, 85, 219, 61), 'assets/icons7.png',
                'AIRA For ANDROID', () {
              LaunchApp.openApp(
                  androidPackageName: 'io.aira.smart', openStore: true);
            }),
          ]),
          const SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            buttons(const Color.fromARGB(255, 224, 51, 20),
                'assets/icons12.png', 'Seeing Ai For IOS', () {}),
          ]),
          const SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            buttons(const Color.fromARGB(255, 182, 38, 110),
                'assets/icons6.png', 'Google Look Out For ANDROID', () {
              LaunchApp.openApp(
                  androidPackageName:
                      'com.google.android.apps.accessibility.reveal',
                  openStore: true);
            }),
          ]),
        ]));
  }
}
