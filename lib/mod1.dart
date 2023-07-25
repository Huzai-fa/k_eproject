import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'locationTrace.dart';
class Task {
  final dynamic lat;
  final dynamic lng;


  Task(this.lat, this.lng);
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Future getData()async{
    var url = 'http://k-electric-app-project.000webhostapp.com/getCo.php';
    final response = await http.get(Uri.parse(url));
    return json.decode(response.body);
  }

  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lineman Location'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.location_on),
        onPressed: (){
          debugPrint('Clicked track location');
        },
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context,snapshot){
          if(snapshot.hasError) print(snapshot.error);
          return snapshot.hasData
              ? ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context,index){
                List list = snapshot.data;
                return ListTile(
                  title: Text(list[index]['id']),// add location id here
                  subtitle: Text(list[index]['latitude']+" "+list[index]['longitude']),// lat and long here
                  trailing: GestureDetector(child: Icon(Icons.location_on),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context){
                            return details(

                                lat:list[index]['latitude'], lng: list[index]['longitude']
                            );
                          }
                      ));
                    },),
                );
              }
          )
              : CircularProgressIndicator();
        },
      ),
    );
  }
}
