import 'package:flutter/material.dart';
import 'package:script_games_serious/widgets/side_menu_tools.dart';
import 'package:flutter_quill/flutter_quill.dart';

QuillController _controller = QuillController.basic();

var size, height, width;
const primaryColor = Color.fromRGBO(176, 78, 107, 1);
const canvasColor = Color.fromRGBO(42, 50, 84, 1);
const scaffoldBackgroundColor = Color.fromRGBO(248, 247, 246, 1);
const textEditorBackground = Color.fromRGBO(220, 212, 214, 1);


class SeconPAge extends StatelessWidget {
  const SeconPAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      backgroundColor: textEditorBackground,
      drawer: sideBarzExample(),
      body: Row(
        children: <Widget> [
          Column(
            children: <Widget> [
              Container(
                alignment: Alignment.topCenter  ,
                height: height,
                color: canvasColor,
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
           Container(
            width: width-46,
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
      elevation: 20,
      child: Scaffold(
        backgroundColor: scaffoldBackgroundColor,
      body: Column(
      children: [
        QuillToolbar.basic(
          controller: _controller,
          toolbarIconSize: 18,
          iconTheme: QuillIconTheme(
            borderRadius: 6,
            iconUnselectedFillColor: canvasColor,
            iconSelectedFillColor: primaryColor,
          ),
          multiRowsDisplay: false,
          ),
        Expanded(
          child: Material(
            color: scaffoldBackgroundColor,
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