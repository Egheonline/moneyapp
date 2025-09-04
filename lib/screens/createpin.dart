import 'package:flutter/material.dart';

import 'package:moneyapp/screens/pin.dart';

class Createpin extends StatefulWidget {
  const Createpin({super.key});

  @override
  State<Createpin> createState() => _CreatepinState();
}

class _CreatepinState extends State<Createpin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(249, 252, 252, 1),
        body: Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Color.fromRGBO(0, 128, 128, 1),
                    child: Icon(Icons.person_2_outlined, color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "John,",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Please set a secure PIN for your PocketSave.",
                        style: TextStyle(fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text("Not you?", style: TextStyle(fontSize: 18)),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Logout",
                              style: TextStyle(
                                color: Color.fromRGBO(0, 128, 128, 1),
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    fixedSize: Size(200, 30),
                    backgroundColor: Color.fromRGBO(0, 128, 128, 1),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Pin()),
                    );
                  },
                  child: Text(
                    "Create A Pin",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
