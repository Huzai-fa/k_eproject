import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:k_electric_app/AdminHome.dart';
import 'package:k_electric_app/createAccount.dart';
import 'package:easy_localization/easy_localization.dart';
import 'loginLoad.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

// Login page for the administrator
class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {


  @override
  Widget build(BuildContext context) {
      return Login();

  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  Future login() async {
    var url = Uri.http("k-electric-app-project.000webhostapp.com", '/login.php', {'q': '{http}'});
    var response = await http.post(url, body: {
      "username": user.text,
      "password": pass.text,
    });
    var data = json.decode(response.body);
    if (data.toString() == "Success") {
      Fluttertoast.showToast(
        msg: 'Login Successful',
        backgroundColor: Colors.green,
        textColor: Colors.white,
        toastLength: Toast.LENGTH_SHORT,
      );
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => loginLoad(),
        ),
      );
    } else {
      Fluttertoast.showToast(
        backgroundColor: Colors.red,
        textColor: Colors.white,
        msg: 'Username and password invalid',
        toastLength: Toast.LENGTH_SHORT,
      );
    }
  }

  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      home: Scaffold(
        resizeToAvoidBottomInset : false,
        body: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/bg2.jpg"), fit: BoxFit.cover),
          ),
          child: Container(
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center ,
                      children: [
                       Image.asset("images/logo2.png",width: 200,height: 200,),
                  ]),
              Text('Login',style: TextStyle(fontFamily:'SeymourOne',color: Colors.orange,fontSize: 30),).tr(),
                  //sized box height 20.0
                  SizedBox(height: 30,),
                  SizedBox(
                    width:300,
                    child: TextField(
                      controller: user,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255,254, 191, 110),
                          hintText: 'Enter Email'.tr(),
                          hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                          contentPadding: const EdgeInsets.all(15),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.greenAccent,
                              ),
                              borderRadius: BorderRadius.circular(30))),
                      onChanged: (value) {
                        // do something
                      },
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    width:300,
                    child: TextField(
                      controller: pass,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Colors.white),
                      obscureText: true,
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255,254, 191, 110),
                          hintText: 'Enter Password'.tr(),
                          hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                          contentPadding: const EdgeInsets.all(15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onTap: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      onChanged: (value) {
                      },
                    ),
                  ),
                SizedBox(height: 20,),
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                      onPressed: () {
                        login();
                        },
                      style:
                      ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                      child: const Text('Login').tr(),),
                ),
                  SizedBox(
                    width: 250,
                    child: ElevatedButton(

                        onPressed: () {

                        },
                        style:
                        ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        child: const Text('Create Account').tr()),
                  ),
                SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left:120),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [
                        FloatingActionButton(onPressed: () {
                          context.locale = Locale('en', 'US');

                 },
                          backgroundColor: Color.fromARGB(255,221, 110, 15),
                        child: Text('EN',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(width:10),
                        FloatingActionButton(onPressed: () {
                          context.locale = Locale('ur', 'US');
                          },
                          backgroundColor: Color.fromARGB(255, 101, 170, 18),
                          child: Text('UR',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        ),

                      ],
                    ),
                  )
                ],

              ),
            ),
          ),
        ),
      ),
    );
  }

}

