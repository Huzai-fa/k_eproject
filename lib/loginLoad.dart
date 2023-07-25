// @dart=2.9
import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:k_electric_app/createAccount.dart';
import 'AdminHome.dart';
import 'aftersplash.dart';

class loginLoad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    supportedLocales: context.supportedLocales;
    localizationsDelegates: context.localizationDelegates;
    return MaterialApp(
      title: 'Login Load screen',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: LoadScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoadScreen extends StatefulWidget {

  @override
  _LoadScreenState createState() => _LoadScreenState();
}
class _LoadScreenState extends State<LoadScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                adminHome()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Text('Logging In',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24,fontFamily: 'SeymourOne'),).tr(),
          ],
        ),
      ),
    );
  }
}
