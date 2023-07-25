import 'dart:async';
import 'package:flutter/material.dart';
import 'package:k_electric_app/AdminHome.dart' ;
import 'package:k_electric_app/aftersplash.dart' as sp ;
import 'package:k_electric_app/createAccount.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:k_electric_app/mapCo-ordinates.dart';
import 'package:k_electric_app/module2.dart';
import 'package:k_electric_app/module2load.dart';
// Login page for the administrator
class FourthScreen extends StatefulWidget {
  const FourthScreen({Key? key}) : super(key: key);
  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
  Widget build(BuildContext context) {
    return adminHome();

  }
}

class adminHome extends StatefulWidget {
  const adminHome({Key? key}) : super(key: key);

  @override
  State<adminHome> createState() => _adminHomeState();
}

class _adminHomeState extends State<adminHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      home: Scaffold(
        resizeToAvoidBottomInset : false,
        body: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/bg3.png"), fit: BoxFit.cover),
          ),
          child: Container(
            child: SafeArea(
              child: Column(
           // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center ,
                      children: [
                        Image.asset("images/logo2.png",width: 150,height: 150,),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center ,
                    children: [
                      SizedBox(height: 20,),
                      Center(
                        child: SizedBox(
                          width: 330,
                          child: Container(
                            width: 300,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(140, 12, 12, 12),
                              border: Border.all(
                                color: Colors.grey,
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),

                              borderRadius: BorderRadius.circular(7.0),
                            ),
                          child: Column(

                            children: [
                              SizedBox(height:5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                                children: [
                                  SizedBox(height:50, width:50,child: Image.asset("images/userLogo.png")),
                                  SizedBox(

                                    child: Column(
                                      children: [
                                        Text("",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: AutofillHints.username,fontSize: 21),).tr(),
                                        Text("User ID - XXXXX",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: AutofillHints.username,fontSize: 15),).tr(),
                                      ],
                                    ),
                                  )
                                ],
                              ),

                            ],
                          ),
                          ),
                        ),
                      ),

                    ],),
                  SizedBox(height: 30,),
                  Center(
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => mapCoordinates()),
                              );
                            },
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(140, 12, 12, 12),
                                border: Border.all(
                                  color: Colors.black12,
                                  style: BorderStyle.solid,
                                  width: 1.0,
                                ),

                                borderRadius: BorderRadius.circular(7.0),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(height: 9,),
                                  Image.asset("images/locate.png",width: 90,height: 90,),
                                  SizedBox(height: 9,),
                                  Text('Locate Lineman',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily:'SeymourOne',fontSize: 10),).tr(),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => module2Load()),
                              );
                            },
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(140, 12, 12, 12),
                                border: Border.all(
                                  color: Colors.grey,
                                  style: BorderStyle.solid,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(7.0),
                              ),
                              child:Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 9,),
                                Image.asset("images/map.png",width: 90,height: 90,),
                                SizedBox(height: 9,),
                                Text('Show Map',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily:'SeymourOne',fontSize: 12),).tr(),
                              ],
                            ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Center(
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(140, 12, 12, 12),
                              border: Border.all(
                                color: Colors.grey,
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),

                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 9,),
                          Image.asset("images/discrepancies.png",width: 90,height: 90,),
                          SizedBox(height: 9,),

                          Text('Show Discrepancies',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily:'SeymourOne',fontSize: 10),).tr(),
                        ],
                      ),

                          ),
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(140, 12, 12, 12),
                              border: Border.all(
                                color: Colors.grey,
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),

                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(height: 9,),
                                Image.asset("images/schedule.png",width: 90,height: 90,),
                                SizedBox(height: 9,),

                                Text('Show Schedule',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily:'SeymourOne',fontSize: 12),).tr(),
                              ],
                            ),

                          ),

                        ],
                      ),
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

