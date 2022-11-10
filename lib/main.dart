import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:script_games_serious/screens/openNew_screen.dart';
import 'package:script_games_serious/widgets/side_menu.dart';
import 'package:script_games_serious/widgets/widgets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DesktopWindow.setMinWindowSize(const Size(600, 800));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Spotify UI',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(backgroundColor: Color.fromRGBO(230, 234, 223, 1)),
        scaffoldBackgroundColor: Color.fromRGBO(230, 234, 223, 1),
        backgroundColor: const Color(0xFF121212),
        primaryColor: Colors.black,
        //accentColor: const Color(0xFF1DB954),
        iconTheme: const IconThemeData().copyWith(color: Colors.white),
        fontFamily: 'Montserrat',
      ),
      home: Shell(),
    );
  }
}

class Shell extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                SideMenu(),
                Expanded(child: openNew_screen()),
                //sideAccess(),
              ],
          ),
          ),
        ],
      ),
    );
  }
}
