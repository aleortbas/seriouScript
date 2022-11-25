


import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:script_games_serious/widgets/side_menu_tools.dart';
import 'package:script_games_serious/widgets/side_menu.dart';
import 'package:script_games_serious/widgets/appbar_reuse.dart';

var size, height, width;
const primaryColor = Color.fromRGBO(0, 0, 0, 1);
const secundaryColor = Color.fromRGBO(50, 178, 169, 1);
const canvasColor = Color.fromRGBO(21, 76, 72, 1);
const sideBarColor = Color.fromRGBO(35, 127, 121, 1);
const textEditorBackground = Color.fromARGB(235, 82, 82, 82);
TextEditingController textarea = TextEditingController();

class investigation_screen extends StatelessWidget {
  const investigation_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            height: 100.0,
            width: width,
            child: appbar_reuse(),
          ),
        ],
      ),
            drawer: sideBarzExample(),
      body: Row(
        children: <Widget> [
          Container(
            color: sideBarColor,
            child: Column(
              children: <Widget> [
                Container(
                  alignment: Alignment.topCenter  ,
                  color: sideBarColor,
                  child: Builder(
                  builder: (context) {
                    return IconButton(
                      onPressed: (){ 
                        Scaffold.of(context).openDrawer(); 
                      }, 
                      icon: Icon(Icons.menu), color: primaryColor, iconSize: 30,
                      tooltip: 'Abrir Menu',                    
                      );
                  }
                ),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              AccessMenu(),
            ],
          ),
          Container(
            width: width-300,
            margin: EdgeInsets.only(top: 10, left: 25, right: 25),
            child: Expanded(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.topLeft,
                  child: 
                Title(
                  color: primaryColor, 
                  child: Text('Nombre del guion')),
                ),
                TextField(  
                      keyboardType: TextInputType.multiline,
                      maxLines: 1,
                      decoration: InputDecoration( 
                        filled: true, //<-- SEE HERE
                        fillColor: textEditorBackground,
                        border: OutlineInputBorder(),
                         hintText: "Enter ",
                         focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: secundaryColor)
                         )
                      ),                  
                   ),
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.topLeft,
                  child: 
                Title(
                  color: primaryColor, 
                  child: Text('Encabezado')),
                ),
                TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 1,
                      decoration: InputDecoration( 
                        filled: true, //<-- SEE HERE
                        fillColor: textEditorBackground,
                        border: OutlineInputBorder(),
                         hintText: "Enter ",
                         focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: secundaryColor)
                         )
                      ),                  
                   ),
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.topLeft,
                  child: 
                Title(
                  color: primaryColor, 
                  child: Text('Pie de pagina')),
                ),
                TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 1,
                      decoration: InputDecoration( 
                        filled: true, //<-- SEE HERE
                        fillColor: textEditorBackground,
                        border: OutlineInputBorder(),
                         hintText: "Enter ",
                         focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: secundaryColor)
                         )
                      ),                  
                   ),
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.topLeft,
                  child: 
                Title(
                  color: primaryColor, 
                  child: Text('Numeracion de la escena')),
                ),
                TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 1,
                      decoration: InputDecoration( 
                        filled: true, //<-- SEE HERE
                        fillColor: textEditorBackground,
                        border: OutlineInputBorder(),
                         hintText: "Enter ",
                         focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(width: 1, color: secundaryColor)
                         )
                      ),                  
                   ),
              ]
            )
            ),
          ),
        ],
      )
    );
  }
}

class AccessMenu extends StatefulWidget {
  const AccessMenu({Key? key}) : super(key: key);

  @override
  State<AccessMenu> createState() => _AccessMenuState();
}

class _AccessMenuState extends State<AccessMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height-56,
      width: 200.0,
      color: Color.fromRGBO(21, 76, 72, 1),
      child: Column(
        children: <Widget> [
          Padding(
            padding: const EdgeInsets.all(1.5),
            ), 
            SizedBox(height: 25,),
            _sideMenuIconTab(
              iconData: Icons.feed_outlined,
              title: 'Guion',
              onTap: () {},
          ),
          _sideMenuIconTab(
              iconData: Icons.supervised_user_circle_rounded,
              title: 'Personajes',
              onTap: () {},
          ),
          _sideMenuIconTab(
              iconData: Icons.home_work_sharp,
              title: 'Localizaciones',
              onTap: () {},
          ),
          _sideMenuIconTab(
              iconData: Icons.drive_file_move_outlined,
              title: 'Documentos',
              onTap: () {},
          ),
      ]
      ),
    );
  }
}


class _sideMenuIconTab extends StatelessWidget {
  
  final IconData iconData;
  final String title;
  final VoidCallback onTap;

  const _sideMenuIconTab({
    Key? key,
    required this.iconData,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        size: 22.0,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color.fromRGBO(234, 227, 230, 4)),
        textAlign: TextAlign.left, overflow: TextOverflow.ellipsis,),
        onTap: onTap,
    );
  }
}

