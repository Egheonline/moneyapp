import 'package:flutter/material.dart';
import 'package:moneyapp/screens/createpin.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(249, 252, 252, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 50),
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
                        child: Icon(Icons.arrow_back, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Let's get started",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Register to start saving and investing with \nPocketSave today!",
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text("First & Last name", style: TextStyle(fontSize: 16)),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: "e.g John Doe",
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
                Text("Email Address", style: TextStyle(fontSize: 16)),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: "e.g john@gmail.com",
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
                Text("Phone number", style: TextStyle(fontSize: 16)),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: "e.g 08123456789",
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
                Text("Create Password", style: TextStyle(fontSize: 16)),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: "e.g Password",
                    suffixIcon: Icon(Icons.remove_red_eye_sharp),
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
                Text("Re-type the password", style: TextStyle(fontSize: 16)),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: "Password",
                    suffixIcon: Icon(Icons.remove_red_eye_sharp),
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
                Text(
                  "Enter a referal code (Optional)",
                  style: TextStyle(fontSize: 16),
                ),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    hintText: "e.g John Doe",
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
                        MaterialPageRoute(builder: (context) => Createpin()),
                      );
                    },
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 20,
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
