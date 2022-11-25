import 'package:flutter/material.dart';
import 'package:script_games_serious/main.dart';
import 'package:script_games_serious/screens/openNew_screen.dart';
import 'package:script_games_serious/screens/script_textEditor.dart';
import 'package:script_games_serious/screens/board_cards.dart';
import 'package:script_games_serious/screens/investigation.dart';

const String textScreen = 'script_textEditor';
const String newDoc = 'openNew_screen';
const String home = 'main.dart';
const String boardCards = 'board_cards';
const String invScreen = 'investigation';

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case textScreen:
      return MaterialPageRoute(builder: (context) => SeconPAge());
    case newDoc:
      return MaterialPageRoute(builder: (context) => initial());
    case home:
      return MaterialPageRoute(builder: (context) => MyApp());
    case boardCards:
      return MaterialPageRoute(builder: (context) => dragTableBoard());
    case invScreen:
      return MaterialPageRoute(builder: (context) => investigation_screen());
    default:
    throw('this input name does not eexist');
  }
}