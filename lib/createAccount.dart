import 'dart:async';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
// Login page for the administrator
class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return SignUp();
  }
}

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                        Image.asset("images/logo2.png",width: 150,height: 150,),
                      ]),
                  Text('SignUp',style: TextStyle(fontFamily:'SeymourOne',color: Colors.orange,fontSize: 30),).tr(),
                  //sized box height 20.0
                  SizedBox(height: 20,),
                  SizedBox(
                    width:300,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255,254, 191, 110),
                          hintText: 'Enter Username'.tr(),
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
                  SizedBox(height: 5,),
                  SizedBox(
                    width:300,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255,254, 191, 110),
                          hintText: 'Enter Email'.tr(),
                          hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                          contentPadding: const EdgeInsets.all(15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onChanged: (value) {
                        // do something
                      },
                    ),
                  ),
                  SizedBox(height: 5,),
                  SizedBox(
                    width:300,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255,254, 191, 110),
                          hintText: 'Enter Official ID'.tr(),
                          hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                          contentPadding: const EdgeInsets.all(15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onChanged: (value) {
                        // do something
                      },
                    ),
                  ),
                  SizedBox(height: 5,),
                  SizedBox(
                    width:300,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255,254, 191, 110),
                          hintText: 'Enter Phone'.tr(),
                          hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                          contentPadding: const EdgeInsets.all(15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onChanged: (value) {
                        // do something
                      },
                    ),
                  ),
                  SizedBox(height: 5,),
                  SizedBox(
                    width:300,

                    child: TextField(
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
                      onChanged: (value) {
                        // do something
                      },
                    ),
                  ),
                  SizedBox(height: 30,),
                  SizedBox(
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () {},
                        style:
                        ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                        child: const Text('Create Account').tr()),
                  ),

                ],

              ),
            ),
          ),
        ),
      ),
    );
  }

}

