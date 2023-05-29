// ignore_for_file: file_names, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:barcode_scan2/barcode_scan2.dart';

import 'package:driveapp/data/variable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ScannerScreen extends StatefulWidget {
  @override
  _ScannerScreen createState() => _ScannerScreen();
}

class _ScannerScreen extends State {
  final controller = Get.put(AppController());
  @override
  void initState() {
    setState(() {
      _scan();
    });
  }

  ScanResult? scanResult;

  final _flashOnController = TextEditingController(text: 'Flash on');
  final _flashOffController = TextEditingController(text: 'Flash off');
  final _cancelController = TextEditingController(text: 'Cancel');

  var _aspectTolerance = 0.00;
  var _numberOfCameras = 0;
  var _selectedCamera = -1;
  var _useAutoFocus = true;
  var _autoEnableFlash = false;
  @override
  Widget build(BuildContext context) {
    if (controller.deliveryList.isEmpty)
      return Center(
          child: Text(
        "Empty list try to go back and add some deliveries !",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 15,
        ),
      ));
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
          controller.deliveryList.value.clear();
        },
        child: const Icon(Icons.delete_outline_rounded),
      ),
      body: Container(
        color: Colors.grey.shade50,
        child: Column(
          children: [
            Container(
              height: 150,
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 45.0, left: 45.0, right: 45.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("Your Id:- ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                )),
                            Text("5478904",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 13,
                                )),
                          ],
                        ),
                        Text(
                          "March 10,2023",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {});
                        _scan();
                      },
                      child: Icon(
                        Icons.qr_code_2_outlined,
                        size: 50,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 650,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.grey.shade300),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'All Items',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23),
                      )
                    ],
                  ),
                  Expanded(
                    child: ListView.separated(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      shrinkWrap: true,
                      itemBuilder: (c, i) => Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 14),
                        // leading: Text(i.toString()),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  (i + 1).toString() +
                                      "  Order Number : " +
                                      controller.deliveryList[i],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                                "Askhaya Nagar 1st Block 1st Cross, Rammurthy nagar, Bangalore-560016",
                                style: TextStyle(
                                  color: Colors.black26,
                                  fontSize: 13,
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(
                                    "Receiver Name: Devid Greek${scanResult!.formatNote.toString()}",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                    )),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.GoToDetailsPage();
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Details',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 13,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      itemCount: controller.deliveryList.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 20,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    /* */
  }

  _scan() async {
    try {
      final result = await BarcodeScanner.scan(
        options: ScanOptions(
          strings: {
            'cancel': _cancelController.text,
            'flash_on': _flashOnController.text,
            'flash_off': _flashOffController.text,
          },
          useCamera: _selectedCamera,
          autoEnableFlash: _autoEnableFlash,
          android: AndroidOptions(
            aspectTolerance: _aspectTolerance,
            useAutoFocus: _useAutoFocus,
          ),
        ),
      );
      setState(() {
        scanResult = result;
        controller.deliveryList.add(scanResult!.rawContent.toString());
      });
    } on PlatformException catch (e) {
      setState(() {
        scanResult = ScanResult(
          type: ResultType.Error,
          rawContent: e.code == BarcodeScanner.cameraAccessDenied
              ? 'The user did not grant the camera permission!'
              : 'Unknown error: $e',
        );
      });
    }
  }
}
