import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details(
      {super.key,
      required this.icon,
      required this.text,
      required this.onPress});
  final Icon icon;
  final String text;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        height: 50,
        child: ListTile(
          iconColor: Colors.grey.shade400,
          leading: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(5)),
              child: icon),
          title: Text(
            text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.black54,
              size: 18,
            ),
            onPressed: onPress,
          ),
        ),
      ),
    );
  }
}
