// ignore_for_file: file_names, use_key_in_widget_constructors, camel_case_types, library_private_types_in_public_api

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class deliveryLocation extends StatefulWidget {
  @override
  _deliveryLocation createState() => _deliveryLocation();
}

class _deliveryLocation extends State {
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(22.3819, 71.9807),
    zoom: 14.4746,
  );
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ListTile(
              title: const Text(
                'Order Number',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.black),
              ),
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                  size: 20,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Container(
              color: Colors.transparent,
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade200),
                    child: const ListTile(
                      minLeadingWidth: 5,
                      leading: Icon(Icons.my_location),
                      title: Text('your Current Location'),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 85,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey.shade200),
                    child: const ListTile(
                      minLeadingWidth: 5,
                      leading: Icon(Icons.location_on),
                      title: Text(
                        'Akshya Nagar 1st Block 1st  Cross,Rammurthy nagar,Bangalore-560016',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: GoogleMap(
                mapType: MapType.hybrid,
                initialCameraPosition: _kGooglePlex,
                myLocationButtonEnabled: true,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
