import 'dart:async';

import 'package:driveapp/data/variable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class orderDetails extends StatefulWidget {
  @override
  _orderDetails createState() => _orderDetails();
}

class _orderDetails extends State {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(22.3819, 71.9807),
    zoom: 13.5,
  );
  var currentPage;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Container(
            height: 60,
            child: ListTile(
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 18,
                  color: Colors.black,
                ),
              ),
              title: Text(
                'Delivery location',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            //  height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                        height: 45,
                        width: double.infinity,
                        color: Colors.grey.shade300,
                        child: const Center(
                            child: Text(
                          'List',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ))),
                  ),
                  Expanded(
                    child: Container(
                        height: 45,
                        width: double.infinity,
                        color: Colors.grey.shade300,
                        child: const Center(
                            child: Text('map',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)))),
                  ),
                ],
              ),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: /* List.generate(splashData.length,
                    (index) =>*/
                      [buildDot(index: currentPage)]), //)),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 642,
                child: PageView(
                  controller: controller,
                  onPageChanged: (value) {
                    value = currentPage;
                  },
                  children: [
                    ListView(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Order Number:4575158478',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Container(
                                      width: 100,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.grey.shade300),
                                      child: const Center(
                                          child: Text('Completed')))
                                ],
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Text(
                                'Akshya  Nagar 1st Block 1st Cross,Rammurthy nagar,Bangalore-560016',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey.shade400,
                                    fontSize: 14),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Receiver Name:Devid Greek',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text(
                                    'Details',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Divider(
                                thickness: 2,
                                color: Colors.grey.shade400,
                              )
                            ]),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Order Number:4575158478',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Container(
                                      width: 100,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.grey.shade300),
                                      child: const Center(
                                          child: Text('Completed')))
                                ],
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Text(
                                'Akshya  Nagar 1st Block 1st Cross,Rammurthy nagar,Bangalore-560016',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey.shade400,
                                    fontSize: 14),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Receiver Name:Devid Greek',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text(
                                    'Details',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Divider(
                                thickness: 2,
                                color: Colors.grey.shade400,
                              )
                            ]),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Order Number:4575158478',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Container(
                                      width: 100,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.grey.shade300),
                                      child: const Center(
                                          child: Text('Completed')))
                                ],
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Text(
                                'Akshya  Nagar 1st Block 1st Cross,Rammurthy nagar,Bangalore-560016',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey.shade400,
                                    fontSize: 14),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Receiver Name:Devid Greek',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text(
                                    'Details',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Divider(
                                thickness: 2,
                                color: Colors.grey.shade400,
                              )
                            ]),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Order Number:4575158478',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Container(
                                      width: 100,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.grey.shade300),
                                      child: const Center(
                                          child: Text('Completed')))
                                ],
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Text(
                                'Akshya  Nagar 1st Block 1st Cross,Rammurthy nagar,Bangalore-560016',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey.shade400,
                                    fontSize: 14),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Receiver Name:Devid Greek',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text(
                                    'Details',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Divider(
                                thickness: 2,
                                color: Colors.grey.shade400,
                              )
                            ]),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Order Number:4575158478',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Container(
                                      width: 100,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.grey.shade300),
                                      child: const Center(
                                          child: Text('Completed')))
                                ],
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Text(
                                'Akshya  Nagar 1st Block 1st Cross,Rammurthy nagar,Bangalore-560016',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey.shade400,
                                    fontSize: 14),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Receiver Name:Devid Greek',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text(
                                    'Details',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Divider(
                                thickness: 2,
                                color: Colors.grey.shade400,
                              )
                            ]),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: Column(children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Order Number:4575158478',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Container(
                                      width: 100,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.grey.shade300),
                                      child: const Center(
                                          child: Text('Completed')))
                                ],
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Text(
                                'Akshya  Nagar 1st Block 1st Cross,Rammurthy nagar,Bangalore-560016',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey.shade400,
                                    fontSize: 14),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Receiver Name:Devid Greek',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text(
                                    'Details',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Divider(
                                thickness: 2,
                                color: Colors.grey.shade400,
                              )
                            ]),
                          )
                        ]),
                      ],
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
                    )
                  ],
                ),
              ),
            ]),
          )
        ],
      )),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 1),
      margin: const EdgeInsets.only(right: 5),
      width: currentPage == index ? 170 : 0,
      height: 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.black : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(0),
      ),
    );
  }
}
