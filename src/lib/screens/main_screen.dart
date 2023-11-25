// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:game_project/screens/map_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void _navigateToMapScreen() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => MapScreen()));
  }

  int currentPageIndex = 0;
  static const IconData workspace_premium =
      IconData(0xf05ae, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'JobFinder',
          style: GoogleFonts.baloo2(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none_sharp, size: 30),
            onPressed: () {
              // Add your action when the icon is pressed
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        currentIndex: currentPageIndex,
        onTap: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Badge(child: Icon(Icons.person)),
            label: 'Me',
          ),
          BottomNavigationBarItem(
            icon: Badge(child: Icon(Icons.stars_sharp)),
            label: 'Stars',
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 0,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('images/Laura.png'),
                            radius: 35,
                          ),
                          Container(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(height: 5),
                                Text(
                                  "David Parker",
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                                Container(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      workspace_premium,
                                      color: Colors.orange,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      'Premium',
                                      style: GoogleFonts.inter(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Expanded(
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Stack(children: [
                  Positioned(
                    left: 40,
                    child: Image(
                      image: AssetImage('images/Stand1.jpeg'),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 350,
                    bottom: 0,
                    top: MediaQuery.of(context).size.height * 0.1,
                    child: InkWell(
                      onTap: () {},
                      child:
                          Image(image: AssetImage('images/FirstAssetBook.png')),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 350,
                    bottom: MediaQuery.of(context).size.height * 0.30,
                    child: InkWell(
                      onTap: () {},
                      child: Image(
                          image: AssetImage('images/SecondAssetBook.png')),
                    ),
                  ),
                  Positioned(
                    left: 350,
                    right: 0,
                    bottom: MediaQuery.of(context).size.height * 0.30,
                    child: InkWell(
                      onTap: () {
                        print('123');
                      },
                      child:
                          Image(image: AssetImage('images/ThirdAssetBook.png')),
                    ),
                  ),
                  Positioned(
                    left: 350,
                    right: 0,
                    bottom: 0,
                    top: MediaQuery.of(context).size.height * 0.1,
                    child: InkWell(
                      onTap: () {
                        _navigateToMapScreen();
                      },
                      child: Image(
                          image: AssetImage('images/FourthAssetBook.png')),
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
