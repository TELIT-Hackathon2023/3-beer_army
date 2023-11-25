import 'package:flutter/material.dart';
import 'package:game_project/widgets/info.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  bool isShown = false;
  void _switchTInfo() {
    print(isShown);
    setState(() {
      isShown = !isShown;
    });
    print(isShown);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Walking'),
      ),
      body: Stack(
        children: [
          Image.asset(
            'images/Map.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 370,
            left: 50,
            bottom: 0,
            right: 20,
            child: TextButton(
              onPressed: () {
                print('hello');
                _switchTInfo();
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(
                    Colors.transparent), // No overlay color
                textStyle: MaterialStateProperty.all(
                    const TextStyle(color: Colors.black)), // Text color
              ),
              child: const Text(''),
            ),
          ),
          if (isShown)
            const Positioned(
              child: InfoWiget(),
            ),
        ],
      ),
    );
  }
}
