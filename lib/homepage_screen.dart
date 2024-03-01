// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tes_magang_a/login_screen.dart';

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({Key? key}) : super(key: key);

  @override
  State<HomepageScreen> createState() => _HomepageScreenState();
}

class _HomepageScreenState extends State<HomepageScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          {}
          break;

        case 1:
          {}
          break;

        case 2:
          {}
          break;

        case 3:
          {}
          break;

        case 4:
          {}
          break;

        default:
          {
            print("Invalid choice");
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.white70),
          child: Padding(
            padding: EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Center(
                child: Column(
              children: [
                Text(
                  "Hello, Bima Putri",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 200,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "160",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: EdgeInsets.all(0),
                    child: GridView.count(
                      scrollDirection: Axis.vertical,
                      crossAxisCount: 4,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/Lucky Draw.png",
                              width: 50,
                              height: 50,
                            ),
                            Text(
                              "Lucky Draw",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/Book Test Drive.png",
                              width: 50,
                              height: 50,
                            ),
                            Text(
                              "Book Test Drive",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/Book Service.png",
                              width: 50,
                              height: 50,
                            ),
                            Text(
                              "Book Service",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/THS.png",
                              width: 50,
                              height: 50,
                            ),
                            Text(
                              "THS",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/Catalog.png",
                              width: 50,
                              height: 50,
                            ),
                            Text(
                              "Catalog",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/Calculator.png",
                              width: 50,
                              height: 50,
                            ),
                            Text(
                              "Calculator",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/Claim Insurance.png",
                              width: 50,
                              height: 50,
                            ),
                            Text(
                              "Claim Insurance",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/Service Berkala.png",
                              width: 40,
                            ),
                            Text(
                              "Service Berkala",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/Tips and Trick.png",
                              width: 50,
                              height: 50,
                            ),
                            Text(
                              "Tips & Trick",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/Trade in.png",
                              width: 50,
                              height: 50,
                            ),
                            Text(
                              "Trade In",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/Dealer Location.png",
                              width: 40,
                            ),
                            Text(
                              "Dealer Location",
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  height: 20,
                  thickness: 2.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Promotion",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
                Container(
                  width: 150.0,
                  height: 50.0,
                  color: Colors.white,
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.all(50),
                  alignment: Alignment.bottomCenter,
                )
              ],
            )),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.listAlt),
              label: 'Service',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.crop_square,
                size: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail_outline_outlined, color: Colors.black),
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.user),
              label: 'Account',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
