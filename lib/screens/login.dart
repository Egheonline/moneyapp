import 'package:flutter/material.dart';
import 'package:moneyapp/screens/emailconfirm.dart';
import 'package:moneyapp/screens/mainnavigation.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(249, 252, 252, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: CircleAvatar(
                        backgroundColor: Color.fromRGBO(0, 128, 128, 1),
                        child: Icon(
                          Icons.arrow_back,
                          color: const Color.fromARGB(255, 255, 254, 254),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: CircleAvatar(
                        radius: 60,
                        backgroundColor: Color.fromRGBO(0, 128, 128, 1),
                        child: Image.asset(
                          "assets/pocket.png",
                          height: 300,
                          width: 300,
                        ),
                      ),
                    ),

                    Center(
                      child: Text(
                        "What's your number?",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Enter the phone number you used to sign up on PocketSave",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text("Phone Number"),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Phone Number",
                    filled: true,
                    fillColor: Color.fromRGBO(217, 217, 217, 1),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 128, 128, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 128, 128, 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text("Password"),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    filled: true,
                    fillColor: Color.fromRGBO(217, 217, 217, 1),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 128, 128, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 128, 128, 1),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Forgot your password?",
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Emailconfirm(),
                            ),
                          );
                        },
                        child: Text(
                          "Click here",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 128, 128, 1),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100),
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
                        MaterialPageRoute(
                          builder: (context) => MainNavigation(),
                        ),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
