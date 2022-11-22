import 'package:flutter/material.dart';
import 'package:script_games_serious/widgets/side_menu_tools.dart';
import 'package:flutter_quill/flutter_quill.dart';

QuillController _controller = QuillController.basic();

var size, height, width;
const primaryColor = Color.fromRGBO(176, 78, 107, 1);
const canvasColor = Color.fromRGBO(42, 50, 84, 1);
const scaffoldBackgroundColor = Color.fromRGBO(248, 247, 246, 1);


class SeconPAge extends StatelessWidget {
  const SeconPAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      backgroundColor: Colors.white,
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
            width: width - 150,
            child: textArea(),
           )
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
    return Scaffold(
      backgroundColor: Colors.white,
        body: Column(
      children: [
        QuillToolbar.basic(controller: _controller),
        Expanded(
          child: Container(
            child: QuillEditor.basic(
              controller: _controller,
              readOnly: false, // change to true to be view only mode
            ),
          ),
        )
      ],
    ));
  }
}