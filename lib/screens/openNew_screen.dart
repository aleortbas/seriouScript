import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class openNew_screen extends StatelessWidget {
  const openNew_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  const EdgeInsets.symmetric(vertical: 12.0, ),
      alignment: Alignment(-0.9, 0),
      child: Column(
        children: [
          _createNewDoc(),
          SizedBox(height: 10),
          _openDoc()
        ],
      ),
    );
  }
}

class _createNewDoc extends StatefulWidget {
  const _createNewDoc({Key? key}) : super(key: key);

  @override
  State<_createNewDoc> createState() => __createNewDocState();
}

class __createNewDocState extends State<_createNewDoc> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 600,
      child: (
        ElevatedButton.icon(
          onPressed: (){}, icon: Icon( // <-- Icon
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

class _openDoc extends StatefulWidget {
  const _openDoc({Key? key}) : super(key: key);

  @override
  State<_openDoc> createState() => __openDocState();
}

class __openDocState extends State<_openDoc> {
  @override
  Widget build(BuildContext context) {
   return SizedBox(
      height: 100,
      width: 600,
      child: (
        ElevatedButton.icon(
          onPressed: (){}, icon: Icon( // <-- Icon
          Icons.folder_open,
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
        label: Text('Abrir proyecto'))
      ),
    );
  }
}