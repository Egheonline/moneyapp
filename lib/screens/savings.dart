import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../themeprovider.dart';

class Savings extends StatelessWidget {
  const Savings({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: Padding(
        padding: EdgeInsets.only(top: 60, left: 10, right: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello John",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  SizedBox(width: 180),
                  CircleAvatar(
                    backgroundColor: Color.fromRGBO(0, 128, 128, 1),
                    child: Icon(Icons.person_2_outlined, color: Colors.black),
                  ),
                ],
              ),
              Text(
                "Good evening, Welcome back",
                style: TextStyle(
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),

              SizedBox(height: 10),

              Stack(
                children: [
                  Container(
                    height: 170,
                    width: 398,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 128, 128, 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),

                  Positioned(
                    top: 10,
                    left: 19,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      height: 19,
                      width: 114,

                      child: Center(
                        child: Text(
                          "+ Quick Save",
                          style: TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 10,
                    right: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      height: 19,
                      width: 114,

                      child: Center(
                        child: Text(
                          "View Savings",
                          style: TextStyle(
                            color: Color.fromRGBO(0, 128, 128, 1),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 60,
                    left: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Savings",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text("#0", style: TextStyle(color: Colors.white)),
                            SizedBox(width: 8),
                            Icon(Icons.remove_red_eye, color: Colors.white),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 50,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(253, 61, 57, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    right: 30,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(255, 203, 47, 0.73),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 160,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromRGBO(0, 128, 128, 1),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 103,
                            left: 10,
                            child: Text(
                              "Where every save brings \nyou closer to your goal",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 81,
                            left: 10,
                            child: Text(
                              "Goal Based Savings",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Stack(
                              children: [
                                Container(
                                  height: 20,
                                  width: 74,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 14,
                            left: 18,
                            child: Text(
                              "NEW GOAL",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      height: 160,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromRGBO(0, 128, 128, 1),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 108,
                            left: 8,
                            child: Text(
                              "Your saving our priority",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 85,
                            left: 8,
                            child: Text(
                              "Savings Deposit",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Stack(
                              children: [
                                Container(
                                  height: 20,
                                  width: 74,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 14,
                            left: 15,
                            child: Text(
                              "ADD MONEY",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 160,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromRGBO(0, 128, 128, 1),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 103,
                            left: 10,
                            child: Text(
                              "Cash out anytime",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 81,
                            left: 10,
                            child: Text(
                              "Instand withdrawal",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Stack(
                              children: [
                                Container(
                                  height: 20,
                                  width: 79,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 14,
                            left: 18,
                            child: Text(
                              "WITHDRAWAL",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      height: 160,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromRGBO(0, 128, 128, 1),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 108,
                            left: 8,
                            child: Text(
                              "Lock to avoid temptation",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 85,
                            left: 8,
                            child: Text(
                              "Lock",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Stack(
                              children: [
                                Container(
                                  height: 20,
                                  width: 74,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 14,
                            left: 15,
                            child: Text(
                              "LOCK FUND",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 122,
                width: 390,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(0, 128, 128, 1)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 16,
                      left: 13,
                      child: Text(
                        "Recent activities",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color:
                              isDarkMode
                                  ? Colors.white
                                  : const Color.fromARGB(255, 73, 71, 71),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 74,
                      left: 82,
                      child: Text(
                        "2 hours ago",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: isDarkMode ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 82,
                      child: Text(
                        "Just registered",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,

                          color: isDarkMode ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 45,
                      left: 15,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Color.fromRGBO(0, 128, 128, 1),
                        child: Image.asset("assets/pocket.png"),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              SizedBox(height: 18),
              Container(
                height: 36,
                width: 348,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(0, 128, 128, 1)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Refresh",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 128, 128, 1),
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
