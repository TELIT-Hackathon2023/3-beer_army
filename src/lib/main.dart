import 'package:flutter/material.dart';
import 'package:game_project/screens/auth_screen.dart';
import 'package:game_project/screens/main_screen.dart';
import 'package:game_project/widgets/info.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterChat',
      theme: ThemeData().copyWith(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 63, 17, 177)),
      ),
      home: const MainScreen(),
    );
  }
}
