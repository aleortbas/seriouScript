import 'package:flutter/material.dart';
import 'package:script_games_serious/main.dart';
import 'package:script_games_serious/screens/openNew_screen.dart';
import 'package:script_games_serious/screens/script_investigation.dart';
import 'package:script_games_serious/screens/board_cards.dart';

const String invScreen = 'script_investigation';
const String newDoc = 'openNew_screen';
const String home = 'main.dart';
const String boardCards = 'board_cards';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case invScreen:
      return MaterialPageRoute(builder: (context) => SeconPAge());
    case newDoc:
      return MaterialPageRoute(builder: (context) => initial());
    case home:
      return MaterialPageRoute(builder: (context) => MyApp());
    case boardCards:
      return MaterialPageRoute(builder: (context) => dragTableBoard());
    default:
    throw('this input name does not eexist');
  }
}