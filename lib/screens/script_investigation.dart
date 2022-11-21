import 'package:flutter/material.dart';
import 'package:script_games_serious/widgets/customAppBarr.dart';
import 'package:script_games_serious/widgets/side_menu_tools.dart';
import 'package:script_games_serious/widgets/side_menu.dart';

class SeconPAge extends StatelessWidget {
  const SeconPAge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                tools(),
                Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      SizedBox(height: 10),
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


class menu extends StatelessWidget {
  const menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                SideMenu()
              ]
            )
          )
        ]
      ),
    );
  }
}