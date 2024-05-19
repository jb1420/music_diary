import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class dailyPage extends StatefulWidget {
  const dailyPage({Key? key}) : super(key: key);

  @override
  State<dailyPage> createState() => _dailyPageState();
}

class _dailyPageState extends State<dailyPage> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Placeholder(
            color: Colors.white,
          ),
        ),
        Expanded(
          flex: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  // 앨범 커버 이미지
                  Center(
                    child: Container(
                      width: 300,
                      height: 300,
                      color: Colors.red,
                      margin: EdgeInsets.fromLTRB(0,100,0,70),
                    ),
                  ),
                  // 텍스트 정보
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          flex: 5,
                          fit: FlexFit.tight,
                          child: Container(
                            height: 130,
                            // color: Colors.red,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "3월",
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w700,
                                    height: 1,
                                    // backgroundColor: Colors.yellow
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Text(
                                  "12",
                                  style: TextStyle(
                                    fontSize: 60,
                                    fontWeight: FontWeight.w900,
                                    height: 1,
                                    // backgroundColor: Colors.yellow
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 3,
                          height: 130,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10,),
                        Flexible(
                          flex: 10,
                          fit: FlexFit.tight,
                          child: Container(
                            height: 150,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                                  child: Text(
                                    'Title\nTitle',
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 150,
                                  height: 3,
                                  color: Colors.black,
                                  margin: EdgeInsets.fromLTRB(10,0,0,0),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                                  child: Text(
                                    'Artists',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50,),
                ],
              ),
              AspectRatio(
                aspectRatio: 2,
                child: Container(
                  // width: 300,
                  // height: 150,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Placeholder(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
