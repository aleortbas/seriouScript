import 'package:flutter/material.dart';
import 'package:script_games_serious/route/route.dart' as route;

void main() {
  runApp(const MyApp());
}
const primaryColor = Color.fromRGBO(0, 0, 0, 1);
const canvasColor = Color.fromRGBO(35, 127, 121, 1);
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
      home: sideBarzExample(),
    );
  }
}


class sideBarzExample extends StatefulWidget {
  const sideBarzExample({Key? key}) : super(key: key);

  @override
  State<sideBarzExample> createState() => _sideBarzExampleState();
}

class _sideBarzExampleState extends State<sideBarzExample> {

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: canvasColor,
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: null,
            decoration: BoxDecoration(
              color: primaryColor,
              image: DecorationImage(
                  image: AssetImage(
                      'assets/logo.png',
                      )),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            iconColor: primaryColor,
            title: Text('Inicion'),
            onTap: () => Navigator.pushNamed(context, route.home),
          ),
          ListTile(
            leading: Icon(Icons.text_fields),
            iconColor: primaryColor,
            title: Text('Guion'),
            onTap: () => Navigator.pushNamed(context, route.invScreen),
          ),
          ListTile(
            leading: Icon(Icons.account_tree_outlined),
            iconColor: primaryColor,
            title: Text('Investigacion'),
            onTap: () => Navigator.pushNamed(context, route.boardCards),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            iconColor: primaryColor,
            title: Text('Tarjetas'),
            onTap: () => Navigator.pushNamed(context, route.boardCards),
          ),
          ListTile(
            leading: Icon(Icons.area_chart_outlined),
            iconColor: primaryColor,
            title: Text('Estadisticas'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            iconColor: primaryColor,
            title: Text('Ajustes'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.description),
            iconColor: primaryColor,
            title: Text('Politicas'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Salir'),
            leading: Icon(Icons.exit_to_app),
            iconColor: primaryColor,
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}