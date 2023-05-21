import 'dart:math';
import 'package:flutter/material.dart';
import 'package:team_project/sub/secondPage.dart';

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(height: 0),
            Container(
              child: Text('내 주변 실시간 지하철 정보',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: TextButton(onPressed: () {},
                      child: Text('천안역', style: Theme.of(context).textTheme.headlineLarge,))
                ),
                Container(
                    child: TextButton(onPressed: () {},
                        child: Text('아산역', style: Theme.of(context).textTheme.headlineLarge,))
                ),
              ],
            ),
            SizedBox(height: 45),
            GestureDetector(
              child: Container(
                width: double.infinity,
                height: 490,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.2),
                          spreadRadius: 10,
                          blurRadius: 20,
                          offset: Offset(0, -2)
                      )
                    ]

                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Positioned(
                      top: 20, right: 20,
                      child: Image.asset('assets/images/repeat.png', width: 40, height: 40,),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 150,
                          height: 360,
                          child: Column(
                            children: [
                              Text('상행',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              SizedBox(height: 70),
                              SizedBox(child: Text('3분 후',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),),
                              SizedBox(height: 40),
                              SizedBox(child: Text('5분 후',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),),
                              SizedBox(height: 40),
                              SizedBox(child: Text('12분 후',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),),
                            ],
                          ),
                        ),
                        Container(
                          height: 360,
                          width: 1,
                          color: Colors.black38,
                          margin: EdgeInsets.only(bottom: 20),
                        ),
                        Container(
                          width: 150,
                          height: 360,
                          child: Column(
                            children: [
                              Text('하행',
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              SizedBox(height: 70),
                              SizedBox(child: Text('4분 후',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),),
                              SizedBox(height: 40),
                              SizedBox(child: Text('9분 후',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),),
                              SizedBox(height: 40),
                              SizedBox(child: Text('17분 후',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              /*
              onHorizontalDragDown: (details) {

              },

              onHorizontalDragUpdate: (details) {

              },
              */
              onHorizontalDragEnd: (details) {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondApp()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
