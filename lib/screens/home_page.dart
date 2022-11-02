// ignore_for_file: prefer_const_constructors

import 'package:contacts_app/data/contact_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/contact_card.dart';
import '../components/contact_bottom_modell.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(),
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'All Contacts',
              style: TextStyle(
                  fontFamily: "epilogue",
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_rounded),
                hintText: 'Search',
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none),
                fillColor: Color.fromARGB(250, 233, 233, 233),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: shuffled.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            )),
                            context: context,
                            builder: (BuildContext context) {
                              return ContactModel(
                                number: "${shuffled[index].phoneNumber}",
                                name:
                                    "${shuffled[index].firstName} ${shuffled[index].lastName ??= ""}",
                                image: shuffled[index].image,
                              );
                            });
                      },
                      child: ContactCard(
                          image: shuffled[index].image,
                          name:
                              "${shuffled[index].firstName} ${shuffled[index].lastName ??= ""}"),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
