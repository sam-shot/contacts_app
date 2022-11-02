// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ContactModel extends StatelessWidget {
  String? image;
  String name;
  String number;
  ContactModel({
    required this.name,
    required this.number,
    this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    image ??= 'man.jpg';
    return Padding(
      padding: EdgeInsets.only(top: 30),
      child: SizedBox(
        height: 250,
        child: Column(
          children: [
            ClipOval(
              child: Image.asset(
                "assets/images/$image",
                width: 100,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              name,
              style: TextStyle(
                  fontFamily: "epilogue",
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Text(
              number,
              style: TextStyle(
                  fontFamily: "epilogue",
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(33, 4, 9, 38),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.settings),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(33, 4, 9, 38),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.settings),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(33, 4, 9, 38),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.settings),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(33, 4, 9, 38),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(Icons.settings),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
