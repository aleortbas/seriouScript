import 'package:flutter/material.dart';
import 'package:script_games_serious/widgets/side_menu_tools.dart';

class dragTableBoard extends StatelessWidget {
  const dragTableBoard({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    

    var size, height, width;
    const primaryColor = Color.fromRGBO(0, 0, 0, 1);
    const secundaryColor = Color.fromRGBO(50, 178, 169, 1);
    const canvasColor = Color.fromRGBO(21, 76, 72, 1);
    const sideBarColor = Color.fromRGBO(35, 127, 121, 1);
    const textEditorBackground = Color.fromRGBO(58, 58, 58, 20);

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      drawer: sideBarzExample(),
      body: Row(
        children: <Widget> [
          Column(
            children: <Widget> [
              Container(
                alignment: Alignment.topCenter  ,
                height: height,
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
        ],
      ),
    );
  }
}