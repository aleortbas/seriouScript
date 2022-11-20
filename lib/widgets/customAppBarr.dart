
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class sapaperra extends StatelessWidget {
  const sapaperra({Key? key}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(152, 156, 148, 1),
        title: const Text('GeeksforGeeks'),
      ),
    );
  }
}