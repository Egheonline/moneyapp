import 'package:flutter/material.dart';
import 'package:moneyapp/screens/login.dart';
import 'package:pinput/pinput.dart';

class Pin extends StatefulWidget {
  const Pin({super.key});

  @override
  State<Pin> createState() => _PinState();
}

class _PinState extends State<Pin> {
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
                    "Create your 6 digit PIN",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 20),
                  Text("Create a PIN for your PocketSave"),
                  SizedBox(height: 20),
                ],
              ),
              SizedBox(height: 20),

              // Wrap Pinput in Builder to get correct context
              Builder(
                builder:
                    (context) => Pinput(
                      length: 6,
                      onCompleted: (pin) {
                        if (pin == '123456') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Invalid PIN, please try again.'),
                            ),
                          );
                        }
                      },
                      defaultPinTheme: PinTheme(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(253, 255, 255, 1),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Color.fromRGBO(0, 128, 128, 1),
                          ),
                        ),
                      ),
                      focusedPinTheme: PinTheme(
                        width: 50,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(253, 255, 255, 1),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Color.fromRGBO(0, 128, 128, 1),
                          ),
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
