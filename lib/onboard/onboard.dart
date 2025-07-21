import 'package:flutter/material.dart';

class Onboard extends StatefulWidget {

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //rgba(10, 8, 5, 0)
      backgroundColor: Color.fromARGB(255, 10, 8, 5),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:
          [
            //rgba(10, 8, 5, 0)
            Color.fromARGB(1, 10, 8, 5),
            Color.fromARGB(255, 10, 8, 5)
          ])
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  children: [
                    Container(
                      height: 500,
                      width: double.infinity,
                      child: Image.asset("assets/images/onboard.jpg", fit: BoxFit.fill,)
                    ),
                    Container(
                      height: 50,
                    )
                  ],
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Lets , get some \n coffee",
                  style: TextStyle(
                    fontFamily: 'lora',
                    color: Colors.white,
                    fontSize: 30
                  ),
                )
              ],
            ),
            Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                                    "The best grain, the finest roast, the \npowerful flavor.",
                                    style: TextStyle(
                                      fontFamily: 'sora',
                                      //rgba(169, 169, 169, 1)
                                      color: Color.fromARGB(255, 169, 169, 169),
                                      fontSize: 12
                                    ),
                                  ),
                    ),
                    MaterialButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('Signin');
          },
          child: Container(
            margin: EdgeInsets.all(20),
            width: 315,
            height: 60,
            decoration: BoxDecoration(
              // rgba(231, 160, 37, 1)
              color: Color.fromARGB(255, 231, 160, 37),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Center(
              child: Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'inter'
                ),
              ),
            ),
          ),
        ),
          ],
        ),
      ),
    );
  }
}
