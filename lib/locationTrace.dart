import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:k_electric_app/AdminHome.dart';
import 'package:k_electric_app/mod1.dart';
import 'package:http/http.dart' as http;
import 'package:google_maps_flutter/google_maps_flutter.dart';

class details extends StatefulWidget {
  String lat, lng; //variables for constructor
  details({required this.lat, required this.lng});
  @override
  State<StatefulWidget> createState() {
return _detailsState();
  }
}

class _detailsState extends State<details> {
  // created controller to display Google Maps
  Completer<GoogleMapController> _controller = Completer();
//on below line we have set the camera position


  var maptype = MapType.satellite;

  // declared for loop for various locations

  @override
  Widget build(BuildContext context) {
    String lat = widget.lat;
    String lng = widget.lng;
     final CameraPosition _kGoogle = CameraPosition(
      target: LatLng(double.parse(lat), double.parse(lng)),
      zoom: 16,
    );
    final List<LatLng> _latLen = <LatLng>[
      LatLng(24.914393, 67.092511),
      LatLng(24.929367, 67.114816)
    ];

    final Set<Marker> _markers = {};
    final Set<Polyline> _polyline = {};
    for(int i=0; i<_latLen.length; i++){
      _markers.add(
        // added markers
          Marker(
            markerId: MarkerId(i.toString()),
            position:  LatLng(double.parse(lat), double.parse(lng)),
            infoWindow: InfoWindow(
              title: 'Transmission line',
              snippet: 'K.E',
            ),
            icon: BitmapDescriptor.defaultMarker,
          )
      );
      setState(() {

      });
      _polyline.add(
          Polyline(
            polylineId: PolylineId('1'),
            points: _latLen,
            color: Colors.green,
          )
      );
    }


    print(lat);
    print(lng);

    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Stack(
              children:<Widget>[ GoogleMap(
                //given camera position
                initialCameraPosition: _kGoogle,
                // on below line we have given map type
                mapType: maptype,
                // specified set of markers below
                markers: _markers,
                // on below line we have enabled location
                myLocationEnabled: true,
                myLocationButtonEnabled: true,
                // on below line we have enabled compass location
                compassEnabled: true,
                // on below line we have added polylines
                polylines: _polyline,
                // displayed google map
                onMapCreated: (GoogleMapController controller){
                  _controller.complete(controller);
                },
              ),
                Column(
                  children: [
                    FloatingActionButton(
                      child: Icon(Icons.layers),
                      onPressed: ()=>
                      {
                        setState(() {
                          maptype = MapType.normal;
                        })
                      },
                      heroTag: null,
                    ),
                    FloatingActionButton(
                      child: Icon(Icons.arrow_back_ios_new_outlined),
                      onPressed: ()=>
                      {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const adminHome()),
                        )
                      },
                      heroTag: null,
                    ),  ],
                ),

              ]
          ),

        ),
      ),
    );
  }
}

