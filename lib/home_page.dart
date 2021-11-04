import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slide_drawer/slide_drawer.dart';
import 'package:sudeb02/home_body.dart';

final navigatorKey = GlobalKey<NavigatorState>();
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        navigatorKey: navigatorKey,
        home: SlideDrawer(
          backgroundColor: Colors.deepPurple,
          offsetFromRight: 100,
          rotateAngle: pi/34,
          curve: Curves.decelerate,
          duration: Duration(milliseconds: 300),
          items: [
            MenuItem('Home',
                onTap: (){},
                icon: Icons.account_balance),
            MenuItem('Second Page',
                onTap: (){

                },
                icon: Icons.visibility),
            MenuItem('Third Page',
                onTap: (){

                },
                icon: Icons.ac_unit),
            MenuItem('Profile',
                onTap: (){},
                icon: Icons.account_circle_rounded),
            MenuItem('Setting',
                onTap: (){},
                icon: Icons.settings),
          ],
          child:
          HomeBody(),
        ),
      );
  }
}
