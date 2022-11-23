import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:script_games_serious/models/testJson.dart';


class SideMenu extends StatelessWidget {

//  final List<projects> tracks;

  const SideMenu({
    Key? key,
    //required this.tracks,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 280.0,
      color: Color.fromRGBO(21, 76, 72, 1),
      child: Column(
        children: <Widget> [
          Padding(
            padding: const EdgeInsets.all(1.5),), 
            Image.asset('assets/logo.png',
            height: 50.0,
            width: double.infinity,
            filterQuality: FilterQuality.high,),
            SizedBox(height: 25,),
            _sideMenuIconTab(
              iconData: Icons.replay_circle_filled,
              title: 'Recientes',
              onTap: () {},
          ),
          __ListWeeklyProjects(),
          _sideMenuIconTab(
              iconData: Icons.replay_circle_filled,
              title: 'Antiguios',
              onTap: () {},
          ),
          __ListWeeklyProjects(),
      ]
      ),
    );
  }
}

class _sideMenuIconTab extends StatelessWidget {
  
  final IconData iconData;
  final String title;
  final VoidCallback onTap;

  const _sideMenuIconTab({
    Key? key,
    required this.iconData,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        size: 22.0,
      ),
      title: Text(
        title,
        style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: Color.fromRGBO(234, 227, 230, 4)),
        textAlign: TextAlign.left, overflow: TextOverflow.ellipsis,),
        onTap: onTap,
    );
  }
}

class __ListWeeklyProjects extends StatefulWidget {
  const __ListWeeklyProjects({Key? key}) : super(key: key);

  @override
  State<__ListWeeklyProjects> createState() => ___ListWeeklyProjectsState();
}

class ___ListWeeklyProjectsState extends State<__ListWeeklyProjects> {

  List<dynamic> project = [];

    Future<void> readJson() async {
      final String response = await rootBundle.loadString('assets/generated.json');
      final data = await json.decode(response);

      setState(() {
        project = data['user']
        .map((data) => user.fromJson(data)).toList();
      });
    }

  @override
  void initState() {
    super.initState();
    readJson();
  }
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(  
          shrinkWrap: true,
          itemCount: project.length,
          itemBuilder: (c,index){
            return  projectComponent(u: project[index]);
          }
      )
    );
  }
  projectComponent({required user u}){
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Card(
            elevation: 10,
            color: Color.fromRGBO(35, 127, 121, 1),
                child: ListTile(
                  leading: FlutterLogo(size: 20.0),
                  title: Text(u.name),
                  subtitle: Text(u.email),
                  trailing: Icon(Icons.more_vert),
                )
          )
        ],
      ),
    );
  }
}