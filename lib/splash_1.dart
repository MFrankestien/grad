//import 'dart:html';

// ignore_for_file: no_logic_in_create_state

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:grad/page_one.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  _SplashState creatState() => _SplashState();

  @override
  State<StatefulWidget> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const MyPage3()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          //alignment: Alignment.center,
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox.fromSize(
                    size: const Size(75, 75),
                    child: ClipOval(
                      child: Material(
                        color: Colors.yellowAccent,
                        child: InkWell(
                          splashColor: Colors.green,
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'assets/icons9.png',
                                width: 35,
                                height: 25,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                  // Image.asset('assets/images/icon5.jpg',width: 110, height: 90,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text("See Your Money",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        // color: Color.fromARGB(0, 230, 110, 13)),
                        color: Colors.orangeAccent,
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  Text("S",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 96, 218, 15),
                      )),

                  Text("Y",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 235, 29, 29),
                      )),

                  Text("M",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 241, 245, 30),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

//
}
