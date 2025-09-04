import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:provider/provider.dart';
import '../themeprovider.dart';

void _launchYouTubeVideo() async {
  final Uri url = Uri.parse("https://www.youtube.com/watch?v=nH3WnXP0UZo");

  try {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      debugPrint("Falling back to in-app browser...");
      await launchUrl(url, mode: LaunchMode.inAppWebView);
    }
  } catch (e) {
    debugPrint("Could not launch video: $e");
  }
}

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return MaterialApp(
      home: Scaffold(
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
                        color: isDarkMode ? Colors.white : Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
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

                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "My to dos",
                      style: TextStyle(
                        color: isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                    SizedBox(width: 240),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View >",
                        style: TextStyle(color: Color.fromRGBO(0, 128, 128, 1)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 90,
                        width: 105,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Color.fromRGBO(0, 128, 128, 1),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 22,
                              left: 9,
                              child: Text(
                                "Approve \nDevice",
                                style: TextStyle(
                                  color:
                                      isDarkMode ? Colors.white : Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 32,
                              left: 69,
                              child: Image.asset("assets/phone.png"),
                            ),
                            Positioned(
                              top: 55,
                              left: 7,
                              child: Image.asset(
                                "assets/line.png",
                                color: isDarkMode ? Colors.white : Colors.black,
                              ),
                            ),
                            Positioned(
                              top: 59,
                              left: 7,
                              child: CircleAvatar(
                                backgroundColor: Color.fromRGBO(
                                  217,
                                  217,
                                  217,
                                  1,
                                ),
                                radius: 8,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color.fromRGBO(0, 128, 128, 1),
                                  size: 8,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 90,
                        width: 105,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Color.fromRGBO(0, 128, 128, 1),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 22,
                              left: 9,
                              child: Text(
                                "Link Bank Or \nATM Card",
                                style: TextStyle(
                                  color:
                                      isDarkMode ? Colors.white : Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 32,
                              left: 80,
                              child: Image.asset(
                                "assets/card.png",
                                color: isDarkMode ? Colors.white : Colors.black,
                                height: 15,
                                width: 19.95,
                              ),
                            ),
                            Positioned(
                              top: 55,
                              left: 7,
                              child: Image.asset(
                                "assets/line.png",
                                color: isDarkMode ? Colors.white : Colors.black,
                              ),
                            ),
                            Positioned(
                              top: 59,
                              left: 7,
                              child: CircleAvatar(
                                backgroundColor: Color.fromRGBO(
                                  217,
                                  217,
                                  217,
                                  1,
                                ),
                                radius: 8,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color.fromRGBO(0, 128, 128, 1),
                                  size: 8,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 90,
                        width: 105,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Color.fromRGBO(0, 128, 128, 1),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 22,
                              left: 9,
                              child: Text(
                                "Enable Face ID \n/Fingerprint",
                                style: TextStyle(
                                  color:
                                      isDarkMode ? Colors.white : Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 40,
                              left: 80,
                              child: Image.asset(
                                "assets/faceid.png",
                                color: isDarkMode ? Colors.white : Colors.black,
                                height: 12,
                                width: 12,
                              ),
                            ),
                            Positioned(
                              top: 55,
                              left: 7,
                              child: Image.asset("assets/line.png"),
                            ),
                            Positioned(
                              top: 59,
                              left: 7,
                              child: CircleAvatar(
                                backgroundColor: Color.fromRGBO(
                                  217,
                                  217,
                                  217,
                                  1,
                                ),
                                radius: 8,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color.fromRGBO(0, 128, 128, 1),
                                  size: 8,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 90,
                        width: 105,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Color.fromRGBO(0, 128, 128, 1),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 22,
                              left: 9,
                              child: Text(
                                "Add \n BVN",
                                style: TextStyle(
                                  color:
                                      isDarkMode ? Colors.white : Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 32,
                              left: 69,
                              child: Image.asset("assets/phone.png"),
                            ),
                            Positioned(
                              top: 55,
                              left: 7,
                              child: Image.asset("assets/line.png"),
                            ),
                            Positioned(
                              top: 59,
                              left: 7,
                              child: CircleAvatar(
                                backgroundColor: Color.fromRGBO(
                                  217,
                                  217,
                                  217,
                                  1,
                                ),
                                radius: 8,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color.fromRGBO(0, 128, 128, 1),
                                  size: 8,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 90,
                        width: 105,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Color.fromRGBO(0, 128, 128, 1),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 22,
                              left: 9,
                              child: Text(
                                "Approve \nDevice",
                                style: TextStyle(
                                  color:
                                      isDarkMode ? Colors.white : Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 32,
                              left: 69,
                              child: Image.asset("assets/phone.png"),
                            ),
                            Positioned(
                              top: 55,
                              left: 7,
                              child: Image.asset("assets/line.png"),
                            ),
                            Positioned(
                              top: 59,
                              left: 7,
                              child: CircleAvatar(
                                backgroundColor: Color.fromRGBO(
                                  217,
                                  217,
                                  217,
                                  1,
                                ),
                                radius: 8,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color.fromRGBO(0, 128, 128, 1),
                                  size: 8,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 90,
                        width: 105,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Color.fromRGBO(0, 128, 128, 1),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 22,
                              left: 9,
                              child: Text(
                                "Approve \nDevice",
                                style: TextStyle(
                                  color:
                                      isDarkMode ? Colors.white : Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 32,
                              left: 69,
                              child: Image.asset("assets/phone.png"),
                            ),
                            Positioned(
                              top: 55,
                              left: 7,
                              child: Image.asset("assets/line.png"),
                            ),
                            Positioned(
                              top: 59,
                              left: 7,
                              child: CircleAvatar(
                                backgroundColor: Color.fromRGBO(
                                  217,
                                  217,
                                  217,
                                  1,
                                ),
                                radius: 8,
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color.fromRGBO(0, 128, 128, 1),
                                  size: 8,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),

                Row(
                  children: [
                    Text(
                      "Suggestions For You",
                      style: TextStyle(
                        color: isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                    SizedBox(width: 155),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All >",
                        style: TextStyle(color: Color.fromRGBO(0, 128, 128, 1)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _launchYouTubeVideo();
                      },
                      child: Container(
                        height: 66,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 128, 128, 1),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 2,
                              top: 5,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "How Group B \nmade over",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' #20m',
                                      style: TextStyle(
                                        color: Color.fromRGBO(255, 203, 47, 1),
                                        fontSize: 12,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "\nin safe lock",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: 5,
                              top: 5,
                              child: Image.asset("assets/barchart.png"),
                            ),
                            Positioned(
                              bottom: 5,
                              left: 5,
                              child: Container(
                                height: 10,
                                width: 48,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Click to watch",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 5,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                      size: 6,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 66,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 128, 128, 1),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Stack(
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                bottom: 0,
                                left: 8,
                                child: Container(
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(255, 203, 47, 0.73),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 7,
                                left: 5,
                                child: Container(
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(255, 203, 47, 0.73),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                child: Container(
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(255, 203, 47, 0.73),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            left: 20,
                            child: Text(
                              "How interest rates on \nPocketSave works",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            left: 30,
                            child: Container(
                              height: 10,
                              width: 48,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Stack(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Click to watch",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 5,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                        size: 6,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text("My Savings Plans"),
                    SizedBox(width: 170),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All>",
                        style: TextStyle(color: Color.fromRGBO(0, 128, 128, 1)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 107,
                        width: 131,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromRGBO(0, 128, 128, 1),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 73,
                              left: 5,
                              child: Text(
                                "Automatic daily, weekly \nor monthly savings",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 56,
                              left: 5,
                              child: Text(
                                "MoneyPot",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 9,
                              left: 68,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 15,
                                    width: 51,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 77,
                              child: Text(
                                "SETUP",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 107,
                        width: 131,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromRGBO(0, 128, 128, 1),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 73,
                              left: 5,
                              child: Text(
                                "Lock now to avoid \ntemptation",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 56,
                              left: 5,
                              child: Text(
                                "Lock",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 9,
                              left: 50,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 15,
                                    width: 76,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 9,
                              left: 58,
                              child: Text(
                                "Lock Money",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 10),
                      Container(
                        height: 107,
                        width: 131,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromRGBO(0, 128, 128, 1),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 73,
                              left: 5,
                              child: Text(
                                "Save in dollar \nand earn interest",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 56,
                              left: 5,
                              child: Text(
                                "Pocket Dollar",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 9,
                              left: 55,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 15,
                                    width: 76,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 77,
                              child: Text(
                                "Get USD",
                                style: TextStyle(
                                  fontSize: 11,
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
                SizedBox(height: 10),
                Row(
                  children: [
                    Text("Opportunities"),
                    SizedBox(width: 180),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Find More>",
                        style: TextStyle(color: Color.fromRGBO(0, 128, 128, 1)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 107,
                        width: 131,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromRGBO(0, 128, 128, 1),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 53,
                              left: 40,
                              child: Text(
                                "per annum",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 35,
                              left: 49,
                              child: Text(
                                "20%",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 34,
                              left: 36,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 65,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 7,
                              left: 46,
                              child: Text(
                                "N5K INVEST NOW",
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

                      SizedBox(width: 10),
                      Container(
                        height: 107,
                        width: 131,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromRGBO(0, 128, 128, 1),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 53,
                              left: 40,
                              child: Text(
                                "per annum",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 35,
                              left: 49,
                              child: Text(
                                "35%",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 34,
                              left: 36,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 65,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 7,
                              left: 46,
                              child: Text(
                                "N5K INVEST NOW",
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

                      SizedBox(width: 10),
                      Container(
                        height: 107,
                        width: 131,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromRGBO(0, 128, 128, 1),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 53,
                              left: 40,
                              child: Text(
                                "per annum",
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 35,
                              left: 43,
                              child: Text(
                                "25.5%",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 34,
                              left: 36,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 65,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(14),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 7,
                              left: 46,
                              child: Text(
                                "N5K INVEST NOW",
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
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
