import 'package:driveapp/data/variable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class detailsPage extends StatefulWidget {
  @override
  _detailsPage createState() => _detailsPage();
}

class _detailsPage extends State {
  final controller = Get.put(AppController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              child: ListTile(
                leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                title: const Text(
                  'Details',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
              ),
            ),
            Container(
              height: 700,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              controller.GoToOrderDetailsPage();
                            },
                            child: const Text(
                              '1 Order Number:4575158478',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.black),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Text('    March 13,2023',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 15)),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Divider(
                      thickness: 3,
                      color: Colors.grey.shade400,
                    ),
                    const ListTile(
                      minLeadingWidth: 2,
                      leading: Icon(Icons.location_on),
                      title: Text('Your Location'),
                      trailing: Text('11:30'),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const ListTile(
                      minLeadingWidth: 2,
                      leading: Icon(Icons.location_on),
                      title: Text(
                        'Akshya Nagar 1st Block 1st Cross,Rammurthy nagar,Bangalore-560016',
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: Text('01:25'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      minLeadingWidth: 1,
                      leading: const Icon(
                        Icons.add_location,
                        size: 35,
                      ),
                      title: GestureDetector(
                          child: const Text('See Map',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 3,
                      color: Colors.grey.shade400,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Additional Info',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: 'Receiver Name : ',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: ' Devid Greek',
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          )
                        ])),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: 'Contact Number : ',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: ' +91 8759654720',
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          )
                        ])),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: 'Package Content: ',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: 'Documents',
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          )
                        ])),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: 'Weight : ',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: ' 1Kg',
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          )
                        ])),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: 'Package Quanlity:',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: ' 2',
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          )
                        ])),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: 'Payment Method:',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: ' Online',
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          )
                        ])),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.GoToScannerScreen();
                      },
                      child: Container(
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30))),
                        child: const Center(
                          child: Text(
                            'Scan',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
