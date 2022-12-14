import 'package:flutter/material.dart';
import 'package:script_games_serious/widgets/side_menu_tools.dart';
import 'package:script_games_serious/widgets/appbar_reuse.dart';
import 'package:flutter_quill/flutter_quill.dart' hide Text;

QuillController _controller = QuillController.basic();

var size, height, width;
const primaryColor = Color.fromRGBO(0, 0, 0, 1);
const secundaryColor = Color.fromRGBO(50, 178, 169, 1);
const canvasColor = Color.fromRGBO(21, 76, 72, 1);
const sideBarColor = Color.fromRGBO(35, 127, 121, 1);
const textEditorBackground = Color.fromRGBO(58, 58, 58, 20);


class SeconPAge extends StatelessWidget {
  const SeconPAge({Key? key}) : super(key: key);

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
          )
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
           Container(
            width: width-46,
            margin: EdgeInsets.only(top: 4),
            color: textEditorBackground,
            child: Center(
            child: Container(
              width: width-400,
              alignment: Alignment.center,
              child: textArea(),
            ),
           ),
           ),
        ],
      ),
    );
  }
}

class textArea extends StatefulWidget {
  const textArea({Key? key}) : super(key: key);

  @override
  State<textArea> createState() => _textAreaState();
}

class _textAreaState extends State<textArea> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 30,
      child: Scaffold(
      body: Column(
      children: [
        QuillToolbar.basic(
          controller: _controller,
          toolbarIconSize: 18,
          iconTheme: QuillIconTheme(
            borderRadius: 6,
            iconUnselectedFillColor: canvasColor,
            iconSelectedFillColor: secundaryColor,
          ),
          
          multiRowsDisplay: false,
          ),
        Expanded(
          child: Material(
            elevation: 10,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: QuillEditor.basic(
                controller: _controller,
                readOnly: false, // change to true to be view only mode
              ),
          ),
        )
        )
      ],
      )
      ),
    );
  }
}