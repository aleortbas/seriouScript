import 'package:flutter/material.dart';
import 'package:script_games_serious/route/route.dart' as route;

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
    return SizedBox(
      height: 100,
      width: 600,
      child: (
        ElevatedButton.icon(
          onPressed: (){
            Navigator.pushNamed(context, route.newDoc);
          }, icon: Icon( // <-- Icon
          Icons.create_new_folder,
          size: 24.0,
        ), 
        style: ElevatedButton.styleFrom(
          alignment: Alignment.centerLeft,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          onPrimary: Color.fromRGBO(0, 0, 0, 1),
          textStyle: TextStyle(
            fontSize: 21
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
          )
        ),
        label: Text('Crear un nuevo proyecto'))
      ),
    );
  }
}