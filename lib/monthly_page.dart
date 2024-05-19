import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class monthlyPage extends StatefulWidget {
  const monthlyPage({Key? key}) : super(key: key);

  @override
  State<monthlyPage> createState() => _monthlyPageState();
}

class _monthlyPageState extends State<monthlyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color:Colors.blue,
      child: Column(
        children: [
          SizedBox(
            height: 120
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 50,height: 50, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                    SizedBox(width: 30,height: 30,),
                    Container(width: 45,height: 45, color: Colors.red,),
                  ],
                ),
              ),
            ]
          ),
          SizedBox(height: 30,),
          // SizedBox(height: 10,),
          Text(
            "03",
            style: TextStyle(
              fontSize: 60,
              // fontStyle:
            ),
          )
        ],
      ),
    );
  }
}
