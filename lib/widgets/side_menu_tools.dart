import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:script_games_serious/models/testJson.dart';


class tools extends StatelessWidget {

//  final List<projects> tracks;

  const tools({
    Key? key,
    //required this.tracks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 200.0,
      color: Color.fromRGBO(152, 156, 148, 1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          Title(color: Colors.black, child:
           Container(
            width: double.infinity,
            margin: const EdgeInsets.all(30.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(border: Border(
              left: BorderSide(color: Color.fromRGBO(189, 194, 191, 1), width: 5), 
              top: BorderSide(color: Color.fromRGBO(189, 194, 191, 1), width: 4),
              ),
              ),
             child: Text('Menu', style: TextStyle(fontSize: 20),),
             )
             ),
          _toolsIconTab(iconData: Icons.format_align_justify, title: 'Guion', onTap: (){}  ),
          _toolsIconTab(iconData: Icons.account_tree, title: 'Investigacion', onTap: (){}  ),
          _toolsIconTab(iconData: Icons.dashboard, title: 'Tarjetas', onTap: (){}  ),
          _toolsIconTab(iconData: Icons.area_chart, title: 'Estadisticas', onTap: (){}  ),
          _toolsIconTab(iconData: Icons.settings, title: 'Ajustes',   onTap: (){}  ),
      ]
      ),
    );
  }
}

class _toolsIconTab extends StatelessWidget {
  
  final IconData iconData;
  final String title;
  final VoidCallback onTap;

  const _toolsIconTab({
    Key? key,
    required this.iconData,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child:
          Card(
            elevation: 10,
            color: Color.fromRGBO(189, 194, 191, 1),
                child:Center(
                  child: ListTile(
                  leading: Icon(iconData, size: 35,),
                  title: Text(title, style: TextStyle(fontSize: 15, /*fontWeight: FontWeight.bold*/),),
                  
                ),
                )
          )
    );
  }
}

