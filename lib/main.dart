import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var car_list = [
    {
      "name": "Hashback",
      "picture": "assets/carlist.png",
    },
    {
      "name": "Sedan",
      "picture": "assets/carlist.png",
    },
    {
      "name": "SUV",
      "picture": "assets/carlist.png",
    },
    {
      "name": "Wegon",
      "picture": "assets/carlist.png",
    },
  ];
  var logo_list = [
    {
      "picture": "assets/bmw.png",
    },
    {
      "picture": "assets/carlogo.png",
    },
    {
      "picture": "assets/FordLogo.png",
    },
    {
      "picture": "assets/mercedes.png",
    },
    {
      "picture": "assets/nissan.png",
    },
    {
      "picture": "assets/bmw.png",
    },
  ];

  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/car.jpg',
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Container(
                      alignment: Alignment.topLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 35,
                          ),
                          Icon(
                            Icons.notes_sharp,
                            color: Colors.white,
                            size: 35,
                          )
                        ],
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Choose Car Category',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ],
              ),
            ),
            Container(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: car_list.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Center(
                          child: Column(
                        children: [
                          Image.asset(
                            car_list[index]["picture"],
                            height: 70,
                          ),
                          Text(car_list[index]["name"],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold))
                        ],
                      )),
                    );
                  }),
            ),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18.0, left: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('All',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text('Choose a Brand',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(),
              height: MediaQuery.of(context).size.height * 0.10,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: logo_list.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.17,
                      child: Card(
                        child: Container(
                          child: Center(
                              child: Image.asset(
                            logo_list[index]["picture"],
                            fit: BoxFit.cover,
                          )),
                        ),
                      ),
                    );
                  }),
            ),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18.0, left: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('All',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text('New Arrivals',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      height: 250,
                      width: 280.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 200.0,
                            width: 280.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/bannercar1.jpeg'),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Start From 12900'),
                                Text('AUDI AB')
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 250,
                      width: 280.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 200.0,
                            width: 280.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/car.jpg'),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Start From 12900'),
                                Text('AUDI AB')
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18.0, left: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('All',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text('Videos',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      height: 250,
                      width: 280.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 200.0,
                            width: 280.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/bannercar1.jpeg'),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Start From 12900'),
                                Text('AUDI AB')
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 250,
                      width: 280.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        shape: BoxShape.rectangle,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 200.0,
                            width: 280.0,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/car.jpg'),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              shape: BoxShape.rectangle,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Start From 12900'),
                                Text('AUDI AB')
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _cIndex,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        onTap: (value) {
          // Respond to item press.
          setState(() => _cIndex = value);
        },
        items: [
          BottomNavigationBarItem(
            title: Text('Category'),
            icon: Icon(Icons.car_rental),
          ),
          BottomNavigationBarItem(
            title: Text('Repair'),
            icon: Icon(Icons.car_rental),
          ),
          BottomNavigationBarItem(
            title: Text('Services'),
            icon: Icon(Icons.car_rental),
          ),
          BottomNavigationBarItem(
            title: Text('Arrivals'),
            icon: Icon(Icons.car_rental),
          ),
        ],
      ),
    );
  }
}
