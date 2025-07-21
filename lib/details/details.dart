import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final String image;
  final String name;
  final String text;
  final String price;

  const Details({
    super.key,
    required this.image,
    required this.name,
    required this.text,
    required this.price,
  });

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Details();
  }
}

class _Details extends State<Details> {

  bool ischeck = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, size: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                  ),
                  borderRadius: BorderRadius.circular(20)
                ),
                margin: EdgeInsets.only(bottom: 10),
                width: 240,
                height: 220,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 5, top: 20),
                        child: Text(
                            widget.name,
                            style: TextStyle(
                              fontFamily: 'sora',
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                      ),
                        Container(
                        margin: EdgeInsets.only(bottom: 5),
                          child: Text(
                                            widget.text,
                                            style: TextStyle(
                          fontFamily: 'sora',
                          fontSize: 16,
                          color: Color.fromARGB(255, 95, 91, 91),
                                            ),
                                          ),
                        ),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                    Container(
                      margin: EdgeInsets.all(20),
                      width: 50,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 243, 243),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        'assets/images/WhatsApp Image 2025-07-21 at 12.05.46 AM.jpeg',
                        width: 20,
                        height: 20,
                      )
                    ),
                    Container(
                      // margin: EdgeInsets.only(right: 20),
                      width: 50,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 243, 243),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/images/WhatsApp Image 2025-07-21 at 12.05.45 AM.jpeg'),
                        )
                      ),
                    ),
                ],
              ),
            Container(
              width: double.infinity,
                                  margin: EdgeInsets.only(bottom: 15),
                                  child: Text(
                                    widget.price,
                                    style: TextStyle(
                          fontFamily: 'sora',
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                                            ),
                                  ),
            ),
            // Padding(
              // padding: EdgeInsets.symmetric(horizontal: 30),
              // child:
              Divider(
                color: Color.fromARGB(255, 201, 201, 201),
                height: 1,
              ),
            // ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              child: Text(
                'Description',
                style: TextStyle(
                  fontFamily: 'sora',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Text(
                'Type of Milk',
                style: TextStyle(
                  fontFamily: 'sora',
                  fontSize: 14,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 30,
                  height: 20,
                  decoration: BoxDecoration(
                  color: Color.fromARGB(255, 160, 104, 57),
                  borderRadius: BorderRadius.circular(9)
                  ),
                ),
                Text(
            'Organic Whole Milk',
            style: TextStyle(
        fontSize: 12,
        fontFamily: 'inter',
            ),
          ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 30,
                  height: 20,
                  decoration: BoxDecoration(
                  color: Color.fromARGB(255, 160, 104, 57),
                  borderRadius: BorderRadius.circular(9)
                  ),
                ),
                Text(
            'Almond Milk',
            style: TextStyle(
        fontSize: 12,
        fontFamily: 'inter',
            ),
          ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 30,
                  height: 20,
                  decoration: BoxDecoration(
                  color: Color.fromARGB(255, 160, 104, 57),
                  borderRadius: BorderRadius.circular(9)
                  ),
                ),
                Text(
            'Oat Milk',
            style: TextStyle(
        fontSize: 12,
        fontFamily: 'inter',
            ),
          ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 30,
                  height: 20,
                  decoration: BoxDecoration(
                  color: Color.fromARGB(255, 160, 104, 57),
                  borderRadius: BorderRadius.circular(9)
                  ),
                ),
                Text(
            'S',
            style: TextStyle(
        fontSize: 12,
        fontFamily: 'inter',
            ),
          ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 30,
                  height: 20,
                  decoration: BoxDecoration(
                  color: Color.fromARGB(255, 160, 104, 57),
                  borderRadius: BorderRadius.circular(9)
                  ),
                ),
                Text(
            'M',
            style: TextStyle(
        fontSize: 12,
        fontFamily: 'inter',
            ),
          ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  width: 30,
                  height: 20,
                  decoration: BoxDecoration(
                  color: Color.fromARGB(255, 160, 104, 57),
                  borderRadius: BorderRadius.circular(9)
                  ),
                ),
                Text(
            'L',
            style: TextStyle(
        fontSize: 12,
        fontFamily: 'inter',
            ),
          ),
              ],
            ),
        //     CheckboxListTile(
        //       activeColor: Color.fromARGB(255, 160, 104, 57),
        //       // checkboxShape: ,
        //       // fillColor: Colors.brown,
        //       controlAffinity: ListTileControlAffinity.leading,
        //       value: ischeck,
        //   onChanged: (value) {
        //     setState(() {
        // ischeck = value!;
        //     });
        //   },
        //   hoverColor: Colors.brown,
        //   checkColor: Colors.white,
        //   // hoverColor: ,
        //   shape: BeveledRectangleBorder(
        //     borderRadius: BorderRadiusGeometry.circular(20)
        //   ),
        //   title: Text(
        //     'Organic Whole Milk',
        //     style: TextStyle(
        // fontSize: 12,
        // fontFamily: 'inter',
        //     ),
        //   ),
          
        // ),
        // CheckboxListTile(
        //       activeColor: Color.fromARGB(255, 160, 104, 57),
        //       controlAffinity: ListTileControlAffinity.leading,
        //       value: ischeck,
        //   onChanged: (value) {
        //     setState(() {
        // ischeck = value!;
        //     });
        //   },
        //   // hoverColor: Colors.brown,
        //   checkColor: Colors.white,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(50),
        //   ),
        //   title: Text(
        //     'Almond Milk',
        //     style: TextStyle(
        // fontSize: 12,
        // fontFamily: 'inter',
        //     ),
        //   ),
          
        // ),
        // CheckboxListTile(
        //       activeColor: Color.fromARGB(255, 160, 104, 57),
        //       controlAffinity: ListTileControlAffinity.leading,
        //       value: ischeck,
        //   onChanged: (value) {
        //     setState(() {
        // ischeck = value!;
        //     });
        //   },
        //   // hoverColor: Colors.brown,
        //   checkColor: Colors.white,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(50),
        //   ),
        //   title: Text(
        //     'Oat Milk',
        //     style: TextStyle(
        // fontSize: 12,
        // fontFamily: 'inter',
        //     ),
        //   ),
          
        // ),
        // Container(
        //       width: double.infinity,
        //       child: Text(
        //         'Siza',
        //         style: TextStyle(
        //           fontFamily: 'sora',
        //           fontSize: 14,
        //           fontWeight: FontWeight.bold
        //         ),
        //       ),
        //     ),
        //     CheckboxListTile(
        //       activeColor: Color.fromARGB(255, 160, 104, 57),
        //       controlAffinity: ListTileControlAffinity.leading,
        //       value: ischeck,
        //   onChanged: (value) {
        //     setState(() {
        // ischeck = value!;
        //     });
        //   },
        //   // hoverColor: Colors.brown,
        //   checkColor: Colors.white,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(50),
        //   ),
        //   title: Text(
        //     'S',
        //     style: TextStyle(
        // fontSize: 12,
        // fontFamily: 'inter',
        //     ),
        //   ),
          
        // ),
        // CheckboxListTile(
        //       activeColor: Color.fromARGB(255, 160, 104, 57),
        //       controlAffinity: ListTileControlAffinity.leading,
        //       value: ischeck,
        //   onChanged: (value) {
        //     setState(() {
        // ischeck = value!;
        //     });
        //   },
        //   // hoverColor: Colors.brown,
        //   checkColor: Colors.white,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(50),
        //   ),
        //   title: Text(
        //     'M',
        //     style: TextStyle(
        // fontSize: 12,
        // fontFamily: 'inter',
        //     ),
        //   ),
          
        // ),
        // CheckboxListTile(
        //       activeColor: Color.fromARGB(255, 160, 104, 57),
        //       controlAffinity: ListTileControlAffinity.leading,
        //       value: ischeck,
        //   onChanged: (value) {
        //     setState(() {
        // ischeck = value!;
        //     });
        //   },
        //   // hoverColor: Colors.brown,
        //   checkColor: Colors.white,
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(50),
        //   ),
        //   title: Text(
        //     'L',
        //     style: TextStyle(
        // fontSize: 12,
        // fontFamily: 'inter',
        //     ),
        //   ),
          
        // ),
        MaterialButton(
        onPressed: () {
          
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          width: 310,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 231, 160, 37),
          ),
          child: Center(
            child: Text(
              'Add to Cart',
              style: TextStyle(
                fontFamily: 'sora',
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white
              ),
            ),
          ),
        ),
      ),
            ],
          ),
        ),
      ),
      // floatingActionButton: MaterialButton(
      //   onPressed: () {
          
      //   },
      //   child: Container(
      //     width: 310,
      //     height: 50,
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(20),
      //       color: Color.fromARGB(255, 231, 160, 37),
      //     ),
      //     child: Center(
      //       child: Text(
      //         'Add to Cart',
      //         style: TextStyle(
      //           fontFamily: 'sora',
      //           fontWeight: FontWeight.bold,
      //           fontSize: 20,
      //           color: Colors.white
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
