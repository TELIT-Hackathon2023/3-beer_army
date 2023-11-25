import 'package:flutter/material.dart';

class InfoDetail extends StatefulWidget {
  const InfoDetail({super.key});

  @override
  State<InfoDetail> createState() => _InfoDetailState();
}

class _InfoDetailState extends State<InfoDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Deutsche Telekom Info',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 0, 144),
      ),
      backgroundColor: Colors.white,
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image(
                image: AssetImage('images/TS.png'),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.add_to_home_screen_sharp),
                  SizedBox(width: 5),
                  Text(
                    'https://www.deutschetelekomitsolutions.sk/',
                    style: TextStyle(
                      color:
                          Colors.black, // Adjust the color to match the design
                      fontSize: 16, // Adjust the font size to match the design
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.map_outlined),
                  SizedBox(width: 5),
                  Text(
                    'Žriedlová 13, 040 01 Košice',
                    style: TextStyle(
                      color:
                          Colors.black, // Adjust the color to match the design
                      fontSize: 16, // Adjust the font size to match the design
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'The company under the brand T-Systems Slovakia s.r.o. has defined its mission as follows: "We give IT meaning".',
                style: TextStyle(
                  color: Colors.black, // Adjust the color to match the design
                  fontSize: 20, // Adjust the font size to match the design
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'As part of our strategic activities, we are transforming our company into a modern information and communications technology services provider stepping towards a future based on digital technologies. We implement these steps to move our business from a project-driven model (where we supply the required number of IT experts based on our customer\'s.',
                style: TextStyle(
                  color: Colors.black, // Adjust the color to match the design
                  fontSize: 18, // Adjust the font size to match the design
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
