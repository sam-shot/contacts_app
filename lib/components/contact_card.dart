// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, must_be_immutable
import 'package:contacts_app/components/contact_bottom_modell.dart';
import 'package:contacts_app/data/contact_list.dart';
import 'package:contacts_app/model/contact_model.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  String? image;
  String name;

  ContactCard({
    Key? key,
    this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    image ??= 'man.jpg';
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Color.fromARGB(33, 4, 9, 38),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      "assets/images/$image",
                      width: 50,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontFamily: "epilogue",
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Mobile',
                        style: TextStyle(
                            fontFamily: "epilogue",
                            fontWeight: FontWeight.w200,
                            fontSize: 11),
                      ),
                    ],
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  contactList
                      .add(Contacts(firstName: "Taydo", phoneNumber: 9898));
                  print(contactList[15].firstName);
                },
                child: Column(
                  children: [
                    Icon(Icons.call_rounded),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 13,
        ),
      ],
    );
  }
}
