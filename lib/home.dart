import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 150,
                  margin: EdgeInsets.all(8),
                  child: Image.asset('assets/simg1.png'),
                ),
                Container(
                  width: 150,
                  margin: EdgeInsets.all(8),
                  child: Image.asset('assets/simg1.png'),
                ),
                Container(
                  width: 150,
                  margin: EdgeInsets.all(8),
                  child: Image.asset('assets/simg1.png'),
                ),
                Container(
                  width: 150,
                  margin: EdgeInsets.all(8),
                  child: Image.asset('assets/simg1.png'),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          CategoryFilterWidget(),
          Res1Widget()
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle the press event of the floating action button
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Handle the press event of the first item
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                // Handle the press event of the second item
              },
            ),
            SizedBox(width: 40), // Add a spacer for the floating action button
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {
                // Handle the press event of the third item
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                // Handle the press event of the fourth item
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryFilterWidget extends StatefulWidget {
  @override
  _CategoryFilterWidgetState createState() => _CategoryFilterWidgetState();
}

class _CategoryFilterWidgetState extends State<CategoryFilterWidget> {
  List<Category> categories = [
    Category('Category 1', Icons.category),
    Category('Category 2', Icons.category),
    Category('Category 3', Icons.category),
    Category('Category 4', Icons.category),
  ];
  int selectedCategoryIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedCategoryIndex = index;
              });
            },
            child: Container(
              width: 80,
              margin: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: index == selectedCategoryIndex
                    ? Color(0xFFFF5858)
                    : Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Row(
                  children: [
                    Icon(
                      categories[index].icon,
                      color: index == selectedCategoryIndex
                          ? Colors.white
                          : Colors.black,
                    ),
                    SizedBox(height: 8),
                    Text(
                      index == selectedCategoryIndex
                          ? categories[index].name
                          : '',
                      style: TextStyle(
                        color: index == selectedCategoryIndex
                            ? Colors.white
                            : Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Category {
  final String name;
  final IconData icon;

  Category(this.name, this.icon);
}

class Res1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Res1Widget - GROUP
    return Container(
        width: 330,
        height: 183,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 330,
                  height: 183,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 130,
                        left: 0,
                        child: Container(
                            width: 330,
                            height: 53,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(0),
                                topRight: Radius.circular(0),
                                bottomLeft: Radius.circular(11),
                                bottomRight: Radius.circular(11),
                              ),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    offset: Offset(0, 4),
                                    blurRadius: 4)
                              ],
                              color: Color.fromRGBO(255, 255, 255, 1),
                              border: Border.all(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                width: 1,
                              ),
                            ))),
                  ]))),
          Positioned(
              top: 136.06614685058594,
              left: 10.445108413696289,
              child: Text(
                'Domino’s Pizza',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 99.06619262695312,
              left: 287.4450378417969,
              child: Container(
                  width: 34,
                  height: 20,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 34,
                            height: 20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              ),
                              color: Color.fromRGBO(27, 196, 0, 1),
                            ))),
                    Positioned(
                        top: 2,
                        left: 4,
                        child: Text(
                          '4.5',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Poppins',
                              fontSize: 11,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 5,
                        left: 22,
                        child: Container(
                            width: 9,
                            height: 9,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 9,
                                      height: 9,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 0.75,
                                            left: 0.75,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                      ]))),
                            ]))),
                  ]))),
          Positioned(
              top: 144.06613159179688,
              left: 210.44503784179688,
              child: Container(
                  width: 112,
                  height: 27,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/Discount.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    Positioned(
                        top: 4,
                        left: 31,
                        child: Text(
                          '20% FLAT OFF',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 0, 0, 1),
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
          Positioned(
              top: 160.066162109375,
              left: 4.4451069831848145,
              child: Text(
                'Pizza  • Burger  • Soup',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Poppins',
                    fontSize: 11,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
        ]));
  }
}

Future<List<Restaurant>> fetchRestaurants() async {
  final baseUrl = 'https://theoptimiz.com/restro/public/api/';
  final endpoint = 'get_resturants';
  final url = Uri.parse(baseUrl + endpoint);

  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({
      "lat": 25.22,
      "lng": 45.32,
    }),
  );

  if (response.statusCode == 200) {
    final jsonBody = jsonDecode(response.body);
    if (jsonBody['status'] == 'SUCCESS' && jsonBody['data'] != null) {
      final List<dynamic> data = jsonBody['data'];
      print("helooo");
      print(data);
      var tmp = data.map((item) => Restaurant.fromJson(item)).toList();
      print(tmp);
      return data.map((item) => Restaurant.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load restaurants');
    }
  } else {
    throw Exception('Failed to load restaurants');
  }
}

class Restaurant {
  final int id;
  final String name;
  final String tags;
  final double rating;
  final String discount; // Change the type to String
  final String primaryImage;
  final double distance;

  Restaurant({
    required this.id,
    required this.name,
    required this.tags,
    required this.rating,
    required this.discount,
    required this.primaryImage,
    required this.distance,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      id: json['id'],
      name: json['name'],
      tags: json['tags'],
      rating: json['rating'].toDouble(),
      discount: json['discount'],
      primaryImage: json['primary_image'],
      distance: json['distance'].toDouble(),
    );
  }
}

class RestaurantScreen extends StatefulWidget {
  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  List<Restaurant> restaurants = [];

  @override
  void initState() {
    super.initState();
    fetchRestaurants().then((data) {
      setState(() {
        restaurants = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurants'),
      ),
      body: ListView.builder(
        itemCount: restaurants.length,
        itemBuilder: (BuildContext context, int index) {
          final restaurant = restaurants[index];
          return ListTile(
            leading: Image.network(restaurant.primaryImage),
            title: Text(restaurant.name),
            subtitle: Text('Rating: ${restaurant.rating}'),
            trailing: Text('${restaurant.distance.toStringAsFixed(2)} meters'),
          );
        },
      ),
    );
  }
}
