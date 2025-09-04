import 'package:flutter/material.dart';
import 'package:moneyapp/screens/login.dart';

class Emailconfirm extends StatelessWidget {
  const Emailconfirm({super.key});

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
                        "Check your email",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Enter the 6 digit reset code Pocketsave sent to your email and create a new password",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text("Enter your"),
                    Text(
                      "RESET CODE",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "e.g 123456789",
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
                Text("Enter new Password"),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
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
                Text("Retype new Password"),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
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

                SizedBox(height: 100),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      fixedSize: Size(300, 30),
                      backgroundColor: Color.fromRGBO(0, 128, 128, 1),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      textAlign: TextAlign.center,
                      "Create new password",
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
