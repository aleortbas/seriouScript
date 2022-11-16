import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:open_file_plus/open_file_plus.dart';
import 'package:script_games_serious/widgets/side_menu.dart';
import 'package:script_games_serious/route/route.dart' as route;

class initial extends StatelessWidget {
  const initial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                SideMenu(),
                Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Column(
                    children: [
                      SizedBox(height: 10),                      
                      _createNewDoc(),
                      SizedBox(height: 10),
                      _openDoc()
                    ],
                  ),
                )
              ],
            )
            )
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
          onPressed: (){
            Navigator.pushNamed(context, route.invScreen);
          }, icon: Icon( // <-- Icon
          Icons.create_new_folder,
          size: 24.0,
        ), 
        style: ElevatedButton.styleFrom(
          alignment: Alignment.centerLeft,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          onPrimary: Color.fromRGBO(37, 41, 28, 1),
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
          onPressed: () async {
            final result = await FilePicker.platform.pickFiles();
            if (result == null) return;

            final file = result.files.first;
            openFile(file);
          }, icon: Icon( // <-- Icon
          Icons.folder_open,
        ), 
        style: ElevatedButton.styleFrom(
          alignment: Alignment.centerLeft,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          onPrimary: Color.fromRGBO(37, 41, 28, 1),
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
  
  void openFile(PlatformFile file) {
    OpenFile.open(file.path!);
  }
}