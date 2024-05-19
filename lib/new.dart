import 'package:flutter/material.dart';


class bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Overflow Example'),
        ),
        body:Container(
          color: Colors.green,
          child: Positioned(
            bottom: -110,  // 화면 아래로 침범하도록 설정
            left: 50,
            child: Container(
              width: 300,
              height: 300,
              color: Colors.red.withOpacity(0.5),
              child: Center(child: Text('Overflow')),
            ),
          ),
        )
      ),
    );
  }
}
