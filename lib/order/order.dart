// import 'package:flutter/material.dart';

// class Order extends StatefulWidget {
//   const Order({super.key});

//   @override
//   State<Order> createState() => _OrderState();
// }

// class _OrderState extends State<Order> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//     appBar:AppBar(
//       leading: Icon(Icons.arrow_back,size: 35,),
//     ),
//     body: Column(
//       children: [
//         // SizedBox(
//           // height: 50,
//         // ),
//         Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             color: Color.fromARGB(255,160, 104, 57),
//           ),
//           padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
//           child:
//           Text("Your order was\ntaken\nsuccesfully",style: TextStyle(color: Colors.white,fontSize: 30),
//           textAlign: TextAlign.center,),
//         ),
//         Container(
//           child: Image.asset("assets/images/Shopaholics Standing.png"),
//         ),
//         SizedBox(height:60,),
//         SizedBox(
//           width: 110,
//           height: 40,
//           child: ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.orange,
//             ),
//             onPressed: (){

//           },
//            child: Text("Skip",style: TextStyle(color: Colors.white),)),
//         )
//       ],
//     ),fhfh
//     );
//   }
// }