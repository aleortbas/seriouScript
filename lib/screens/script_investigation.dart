import 'package:flutter/material.dart';
import 'package:script_games_serious/widgets/customAppBarr.dart';
import 'package:script_games_serious/widgets/side_menu.dart';

class SeconPAge extends StatelessWidget {
  const SeconPAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyWidget();
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return sapaperra();
      /*child: Row(
        children: <Widget>[
          sapaperra()
        ],
      ),*/
  }
}