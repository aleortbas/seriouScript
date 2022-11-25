import 'package:flutter/material.dart';
import 'package:script_games_serious/route/route.dart' as route;



class appbar_reuse extends StatelessWidget {
  const appbar_reuse({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {

    const sideBarColor = Color.fromRGBO(35, 127, 121, 1);

    return Scaffold(
      appBar: AppBar(
        title: const Text("SeriousScript"),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        backgroundColor: sideBarColor,
        automaticallyImplyLeading: false, // this will hide Drawer hamburger icon
        actions: <Widget>[Container()],  
      ),);
  }
}