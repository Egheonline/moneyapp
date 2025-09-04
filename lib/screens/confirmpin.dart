import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Confirmpin extends StatefulWidget {
  const Confirmpin({super.key});

  @override
  State<Confirmpin> createState() => _ConfirmpinState();
}

class _ConfirmpinState extends State<Confirmpin> {
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

                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "Please confirm your PIN to access your PocketSave. Not you?",
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Log out',
                          style: TextStyle(
                            color: Color.fromRGBO(0, 128, 128, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),

              SizedBox(height: 20),
              Pinput(
                length: 6,
                onCompleted: (pin) {
                  // Check the entered PIN and pop if valid
                  if (pin == '123456') {
                    // replace '123456' with the correct PIN
                    Navigator.pop(context); // Go back to the previous screen
                  } else {
                    // Show an error message or perform any other action on invalid PIN
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Invalid PIN, please try again.')),
                    );
                  }
                },

                defaultPinTheme: PinTheme(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(253, 255, 255, 1),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Color.fromRGBO(0, 128, 128, 1)),
                  ),
                ),
                focusedPinTheme: PinTheme(
                  width: 50,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(253, 255, 255, 1),
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Color.fromRGBO(0, 128, 128, 1)),
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
