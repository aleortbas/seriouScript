import 'package:flutter/material.dart';
import 'package:script_games_serious/data/data.dart';

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
      color: Color.fromRGBO(40, 30, 77, 1),
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
          const SizedBox(height: 12.0,),
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
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding:  const EdgeInsets.symmetric(vertical: 12.0),
        physics: const ClampingScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(padding: const EdgeInsets.symmetric(
                vertical: 5.0,
                horizontal: 16.0,
              ),child: Text('Semana pasada', style: Theme.of(context).textTheme.subtitle1,
              overflow:  TextOverflow.ellipsis, textAlign: TextAlign.right,
                ),
              )
              ),
            ],
          ),
          ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: const <Widget>[
              Card(
                color: Color.fromRGBO(40, 30, 77, 1),
                child: ListTile(
                  leading: FlutterLogo(size: 40.0),
                  title: Text('Two-line ListTile'),
                  subtitle: Text('Here is a second line'),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
            ],
          ),
          SizedBox(height: 24.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(padding: const EdgeInsets.symmetric(
                vertical: 5.0,
                horizontal: 16.0,
              ),child: Text('Antiguo', style: Theme.of(context).textTheme.subtitle1,
              overflow:  TextOverflow.ellipsis, textAlign: TextAlign.right,
                ),
              )
              ),
            ],
          )
        ],
      ),
    );
  }
}