import 'package:flutter/material.dart';

class Cart extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Cart();
  }
}

class _Cart extends State<Cart>
{
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back, size: 30),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            coffeetile(image: 'assets/images/kaptchino.jpg', name: 'cappuctino', text: 'With Oat Milk', price: '\$3.90'),
            coffeetile(image: 'assets/images/kaptchino.jpg', name: 'cappuctino', text: 'With Oat Milk', price: '\$4.00'),
            Divider(
                  color: Color.fromARGB(255, 201, 201, 201),
                  height: 1,
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.black
                    )
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text(
                          'Cart Total',
                          style: TextStyle(
                            fontFamily: 'inter',
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 190),
                          child: Text(
                            '\$ 7.90',
                            style: TextStyle(
                              fontFamily: 'inter',
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 40),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Delivey to\n naachi',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'inter',
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(30),
                            child: Text(
                              ':',
                              style: TextStyle(
                                fontFamily: 'inter',
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                          Text(
                            '2715 Ash Dr. San Jose,\n South Dakota 83475',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontFamily: 'inter',
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('Order');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 231, 160, 37),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10,
                      horizontal: 90),
                      child: Text(
                        'Buy now',
                        style: TextStyle(
                                fontFamily: 'sora',
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                      ),
                    ),
                  ),
                )
          ],
        ),
      ),
      
    );
  }
}


class coffeetile extends StatelessWidget
{
  final String image;
  final String name;
  final String text;
  final String price;

  const coffeetile({super.key, required this.image, required this.name, required this.text, required this.price});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill
            ),
            borderRadius: BorderRadius.circular(20)
          ),
          margin: EdgeInsets.all(10),
          width: 100,
          height: 100,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
            name,
            style: TextStyle(
              fontFamily: 'sora',
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontFamily: 'sora',
              fontSize: 14,
              color: Color.fromARGB(255, 95, 91, 91),
            ),
          ),
          Container(
            // width: double.infinity,
            child: Text(
              price,
              style: TextStyle(
                fontFamily: 'sora',
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          ]
        ),
        Container(
          margin: EdgeInsets.only(left: 40),
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 160, 104, 57),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Center(child: Icon(Icons.remove, color: Colors.white,)),
        ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              '1',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
          ),
        Container(
          // margin: EdgeInsets.only(left: 40),
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 160, 104, 57),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Center(child: Icon(Icons.add, color: Colors.white,)),
        ),
      ],
    );
  }
}