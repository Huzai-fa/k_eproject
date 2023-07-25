// @dart=2.9
import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:k_electric_app/createAccount.dart';
import 'aftersplash.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
      await EasyLocalization(
    supportedLocales: [Locale('en', 'US'), Locale('ur', 'US')],
    path: 'assets/translations',
    fallbackLocale: Locale('en', 'US'),
    child: MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    supportedLocales: context.supportedLocales;
    localizationsDelegates: context.localizationDelegates;
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                SecondScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("images/spbg.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Padding( padding: const EdgeInsets.only(top: 210.0),
                child: Image.asset("images/logo.png")),
            SizedBox(height: 45,),
          ],
        ),
      );
  }
}
