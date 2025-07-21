import 'package:cafe/providers/passprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            child: Image.asset("assets/images/sign.jpg", fit: BoxFit.fill),
          ),
          SingleChildScrollView(
            child: Container(
              width: 300,
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // margin: EdgeInsets.only(top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 160, 104, 57),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                          //rgba(160, 104, 57, 1)
                          labelText: 'Enter Username',
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'inter',
                          ),
                          prefixIcon: Container(
                            margin: EdgeInsets.only(left: 30, right: 40),
                            child: Icon(Icons.person, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 160, 104, 57),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                          //rgba(160, 104, 57, 1)
                          labelText: 'Enter Email id',
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'inter',
                          ),
                          prefixIcon: Container(
                            margin: EdgeInsets.only(left: 30, right: 40),
                            child: Icon(Icons.email, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Consumer<Passprovider>(
                      builder: (context, value, child){
                        return Container(
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 160, 104, 57),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: TextFormField(
                            obscureText: value.obas,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderSide: BorderSide.none),
                              //rgba(160, 104, 57, 1)
                              labelText: 'Enter Password',
                              labelStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'inter',
                              ),
                              prefixIcon: Container(
                                margin: EdgeInsets.only(left: 30, right: 40),
                                child: Icon(Icons.lock, color: Colors.white),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  value.off();
                                },
                                icon: Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Icon(
                                    value.myicon,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed('Home');
                      },
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 30),
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 20,
                            ),
                            decoration: BoxDecoration(
                              //rgba(231, 160, 37, 1)
                              color: Color.fromARGB(255, 231, 160, 37),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.white),
                            ),
                            child: Container(
                              padding: EdgeInsets.only(right: 20),
                              child: Text(
                                'Sign in ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: 'inter',
                                ),
                              ),
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(90, 32),
                            child: Container(
                              width: 39,
                              height: 39,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.white),
                                color: Color.fromARGB(255, 160, 104, 57),
                              ),
                            ),
                          ),
                          Transform.translate(
                                    offset: Offset(87, 10),
                                    child: Image.asset(
                                      'assets/images/coffee.png',
                                      width: 50,
                                      height: 50,
                                    ),
                                  ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 60, bottom: 120),
                      child: Row(
                        children: [
                          Text(
                            'Already Registered',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'inter',
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(
                              Icons.arrow_right_alt,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {
                              Navigator.of(
                                context,
                              ).pushReplacementNamed('Signin');
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(8),
                                color: Color.fromARGB(255, 160, 104, 57),
                              ),
                              //rgba(160, 104, 57, 1)
                              child: Text(
                                "Sign in ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'inter',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
