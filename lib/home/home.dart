import 'package:cafe/details/details.dart';
import 'package:cafe/home/appbarsearch.dart';
import 'package:cafe/home/gredcoffee.dart';
import 'package:cafe/providers/animationlist.dart';
import 'package:cafe/providers/navbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Home();
  }
}

class _Home extends State<Home> {
  List coffee = ['Cappucino', 'Latte', 'Ameicano', 'Machiato'];

  List coffeedata = [
    {
      'image': 'assets/images/kaptchino.jpg',
      'name': 'Cappucino',
      'text': 'with Oat Milk',
      'price': '\$ 3.90',
    },
    {
      'image': 'assets/images/kaptchino.jpg',
      'name': 'Cappucino',
      'text': 'with Oat Milk',
      'price': '\$ 4.00',
    },
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(20), child: Appbarsearch()),
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: ListTile(
                title: Text(
                  'hi , naachi',
                  style: TextStyle(
                    fontFamily: 'lora',
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Turpis dui amet amet vel diam\n eget magna tellus.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 155, 155, 155),
                    fontFamily: 'inter',
                    fontSize: 14,
                  ),
                ),
                trailing: Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/naachi.jpg'),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(255, 180, 145, 116),
              width: double.infinity,
              height: 237,
              child: Container(
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/cappucino.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 10, right: 280),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 220, 184, 122),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 15,
                      ),
                      child: Text(
                        'promo',
                        style: TextStyle(
                          fontFamily: 'inter',
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(bottom: 25),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(255, 0, 0, 0),
                            Color.fromARGB(1, 255, 255, 255),
                          ],
                        ),
                      ),
                      child: Text(
                        'Buy one get one\n free',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'lora',
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 30, left: 20, right: 20),
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffee.length,
                itemBuilder: (context, index) {
                  return Consumer<Animationlist>(
                    builder: (context, value, child) {
                      return GestureDetector(
                        onTap: () {
                          value.isselected(index);
                        },
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          curve: Curves.easeIn,
                          decoration: BoxDecoration(
                            color: value.selected == index
                                ? Color.fromARGB(255, 220, 184, 122)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '${coffee[index]}',
                            style: TextStyle(
                              fontFamily: 'inter',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // mainAxisSpacing: 5,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 300,
                ),
                itemCount: coffeedata.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Details(
                            image: coffeedata[index]['image'],
                            name: coffeedata[index]['name'],
                            text: coffeedata[index]['text'],
                            price: coffeedata[index]['price'],
                          ),
                        ),
                      );
                    },
                    child: gredcoffee(
                      image: coffeedata[index]['image'],
                      name: coffeedata[index]['name'],
                      text: coffeedata[index]['text'],
                      price: coffeedata[index]['price'],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Consumer<Navbar>(
        builder: (context, value, child) {
          return BottomNavigationBar(
            currentIndex: value.CurrentIndex,
            onTap: (val) {
              value.selected(val);
              if ( val == 2 ) {
                Navigator.of(context).pushNamed('Cart');
              }
            },
            iconSize: 30,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color.fromARGB(255, 193, 157, 126),
            selectedItemColor: Colors.white,
            unselectedItemColor: Color.fromARGB(255, 160, 104, 57),
            selectedIconTheme: IconThemeData(color: Colors.white),
            unselectedIconTheme: IconThemeData(
              color: Color.fromARGB(255, 160, 104, 57),
            ),
            items: [
              BottomNavigationBarItem(
                icon: value.CurrentIndex == 0
                    ? Icon(Icons.home_outlined)
                    : Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: value.CurrentIndex == 1
                    ? Icon(Icons.favorite_border_outlined)
                    : Icon(Icons.favorite),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: value.CurrentIndex == 2
                    ? Icon(Icons.shopping_bag_outlined)
                    : Icon(Icons.shopping_bag_rounded),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: value.CurrentIndex == 3
                    ? Icon(Icons.person_2_outlined)
                    : Icon(Icons.person),
                label: '',
              ),
            ],
          );
        },
      ),
    );
  }
}
