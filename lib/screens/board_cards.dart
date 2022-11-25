import 'package:flutter/material.dart';
import 'package:script_games_serious/widgets/side_menu_tools.dart';
import 'package:script_games_serious/widgets/appbar_reuse.dart';

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
      appBar: AppBar(
        actions: [
          Container(
            height: 100.0,
            width: width,
            child: appbar_reuse(),
          )
        ],
      ),
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
          Container(
            width: width-46,
            margin: EdgeInsets.only(top: 4),
            color: textEditorBackground,
            child: Center(
            child: Container(
              width: width-400,
              alignment: Alignment.center,
              child: dragElements(),
            ),
           ),
           ),
        ],
      ),
    );
  }
}

class dragElements extends StatefulWidget {
  const dragElements({Key? key}) : super(key: key);

  @override
  State<dragElements> createState() => _dragElementsState();
}

class _dragElementsState extends State<dragElements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            DragTarget(
              builder: (context, _, __) => Container(
                color: Colors.black,
                width: 200,
                height: 200,
              ),
            ),
            Draggable <Color>(
              data: Colors.green,
              child: Container(
                color: Colors.green,
                width: 200,
                height: 200,
          ),
          feedback: Container(
            color: Colors.orange,
            width: 200,
            height: 200,
          ),
          childWhenDragging: Container(
            color: Colors.red,
            width: 200,
            height: 200,
          ),
          ),
          ],
        ),
      ),
    );
  }
}
