import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

void main() {
  runApp(const MyApp());
}
const primaryColor = Color.fromRGBO(176, 78, 107, 1);
const canvasColor = Color.fromRGBO(42, 50, 84, 1);
const scaffoldBackgroundColor = Color.fromRGBO(248, 247, 246, 1);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: primaryColor,
        canvasColor: canvasColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            color: Colors.white,
            fontSize: 46,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      home: SideBarXExample(),
    );
  }
}


class SideBarXExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SidebarX(
            controller: SidebarXController(selectedIndex: 0),
            theme: const SidebarXTheme(
              decoration: BoxDecoration(
                color: canvasColor,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))
              ),
              iconTheme: IconThemeData(
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              selectedTextStyle: const TextStyle(color: primaryColor),
            ),
            extendedTheme: const SidebarXTheme(
              width: 150
            ),

            footerDivider: Divider(color:  Colors.white.withOpacity(0.8), height: 1),
              headerBuilder: (context,extended){
              return const  SizedBox(
                height: 100,
                child: Icon(Icons.menu,size: 45,color: Colors.white,),
              );
            },

            items: const [
              SidebarXItem(icon: Icons.home, label: 'Home',),
              SidebarXItem(icon: Icons.search, label: 'Search'),
              SidebarXItem(icon: Icons.settings, label: 'Setting'),
              SidebarXItem(icon: Icons.dark_mode, label: 'Light/Dark Mode'),
            ],
          ),
          // Your app screen body
        ],
      ),
    );
  }
}