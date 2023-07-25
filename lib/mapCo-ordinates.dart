import 'dart:async';
import 'package:flutter/material.dart';
import 'package:k_electric_app/AdminHome.dart';
import 'package:k_electric_app/createAccount.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:k_electric_app/module2.dart';
import 'package:k_electric_app/module2load.dart';
import 'package:k_electric_app/mod1.dart';


class mapCoordinates extends StatefulWidget {
  const mapCoordinates({Key? key}) : super(key: key);

  @override
  State<mapCoordinates> createState() => _mapCoordinatesState();
}

class _mapCoordinatesState extends State<mapCoordinates> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                home()
            )
        )
    );
  }


  @override
  Widget build(BuildContext context) {
       return MaterialApp(
      home:     Scaffold(
       body:  DecoratedBox(
       decoration: BoxDecoration(
           image: DecorationImage(image: AssetImage("images/loginLoad.jpg"), fit: BoxFit.cover),
    ),
    child: Column(
    children: [
    Padding( padding: const EdgeInsets.only(top: 210.0),
    child: Image.asset("images/loginLoadlogo.png")),
    SizedBox(height: 10,),
    CircularProgressIndicator(
    backgroundColor: Colors.red,
    strokeWidth: 8,
    ),
    SizedBox(height: 10,),
    Text('Loading',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24,fontFamily: 'SeymourOne'),).tr(),
    ],
    ),
    ),
    )

    );
  }
}
