/*import 'package:flutter/material.dart';
import 'package:sym/Rcd_App.dart';
import 'object_detection.dart';
import 'package:external_app_launcher/external_app_launcher.dart';

class MyPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: const MyHome()
    );
  }
}


class MyHome extends StatelessWidget{

  const MyHome({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    //final controller = TorchController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home:
      Scaffold(
        appBar: AppBar(title: const Text("SYM ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,fontStyle: FontStyle.italic,color:Color.fromARGB(255, 175, 61, 118)),),
          leading:Image.asset('assets/images/icons9.jpg',width: 35,height: 25,
          ),
          backgroundColor: const Color.fromARGB(255, 12, 179, 140),
          actions:  [IconButton(icon:const Icon (Icons.flash_auto,size:35.0,color: Color.fromARGB(255, 201, 111, 26)),onPressed:(){//controller.toggle();

          })

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
                      width: 180.0,
                      height:250.0,
                      child: ElevatedButton(onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const ObjectDetection ()));
                      },
                        child:const Text('Object Detection',style: TextStyle(fontSize: 20.0 ,
                            fontStyle: FontStyle.italic,fontWeight:FontWeight.w600),),

                        style: ElevatedButton.styleFrom(primary: Colors.orangeAccent,


                        ), ),),

                    SizedBox(
                      width: 180.0,
                      height:250.0,
                      child:ElevatedButton(onPressed:(){},
                        child:const Text('Currency Detection',style:  TextStyle(fontSize: 20.0 ,
                            fontStyle: FontStyle.italic,fontWeight:FontWeight.w600),),

                        style: ElevatedButton.styleFrom(primary:const Color.fromARGB(255, 17, 153, 5),

                        ), ),),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget> [
                    SizedBox(
                      width: 180.0,
                      height:250.0,
                      child: ElevatedButton(onPressed:(){},
                        child:const Text('Text Recognition',style:  TextStyle(fontSize: 20.0 ,
                            fontStyle: FontStyle.italic,fontWeight:FontWeight.w600),),


                        style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 182, 38, 110),

                        ), ),),

                    SizedBox(
                      width: 180.0,
                      height:250.0,
                      child:ElevatedButton(onPressed:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const MyOne()),);
                      },
                        child:const Text('RCD APPs',style:  TextStyle(fontSize: 20.0 ,
                            fontStyle: FontStyle.italic,fontWeight:FontWeight.w600),),

                        style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 36, 11, 182),

                        ), ),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget> [
                    SizedBox(
                      width: 380.0,
                      height:70.0,
                      child:ElevatedButton.icon(onPressed:(){},
                        icon:
                        const Icon (Icons.mic,size:40.0,color: Color.fromARGB(255, 23, 218, 66)),
                        label: const Text('Assistant', style:  TextStyle(fontSize: 20.0 ,
                            fontStyle: FontStyle.italic,fontWeight:FontWeight.w600),),

                        style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 221, 21, 21),

                        ), ),),

                  ],
                ),
              ]),


        ),
      ),
    );}}*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Rcd_App.dart';
import 'currency_detection.dart';
import 'object_detection.dart';
import 'text_recognition.dart';

Widget buttons(color, image, text, press) {
  return InkWell(
      onTap: press,
      child: Container(
        height: 250,
        width: 180,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              image,
              height: 120,
              width: 180,
              fit: BoxFit.cover,
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

class MyPage3 extends StatelessWidget {
  const MyPage3({Key? key}) : super(key: key);

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
                icon: const Icon(Icons.flash_auto,
                    size: 35.0, color: Color.fromARGB(255, 201, 111, 26)),
                onPressed: () {
                  //controller.toggle();
                })
          ],
        ),
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buttons(
                  Colors.orangeAccent,
                  'assets/icons13.png',
                  'Object Detection',
                  () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const ObjectDetection()));
                  },
                ),
                buttons(
                  const Color.fromARGB(255, 17, 153, 5),
                  'assets/icons11.png',
                  'Knowing Currency',
                  () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Home()));
                  },
                )
              ],
            ),
            const SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // buttons(const Color.fromARGB(255, 182, 38, 110), 'assets/icons10.png', 'Text Recognition', (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MyHomePage ()));
                //},),
                buttons(
                  const Color.fromARGB(255, 36, 11, 182),
                  'assets/icons14.png',
                  'RCD Apps',
                  () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => const MyPage4()));
                  },
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox.fromSize(
                  size: const Size(85, 85),
                  child: ClipOval(
                    child: Material(
                      color: Colors.blue,
                      child: InkWell(
                        splashColor: Colors.lightBlueAccent,
                        onTap: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            Icon(Icons.mic, size: 45.0, color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                // Image.asset('assets/images/icon5.jpg',width: 110, height: 90,),
              ],
              /*children: <Widget> [
                  SizedBox(
                    width: 380.0,
                    height:70.0,

                    child:ElevatedButton.icon(onPressed:(){},

                      icon:
                      const Icon (Icons.mic,size:40.0,color: Color.fromARGB(255, 23, 218, 66)),
                      label: const Text('Assistant', style:  TextStyle(fontSize: 30.0 ,
                          fontStyle: FontStyle.italic,fontWeight:FontWeight.w600),),

                      style: ElevatedButton.styleFrom(primary: const Color.fromARGB(255, 221, 21, 21),shape: RoundedRectangleBorder( borderRadius:BorderRadius.circular(40)),

                      ), ),),

                ],*/
            ),
          ]),
        ));
  }
}
