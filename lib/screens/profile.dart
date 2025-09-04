import 'package:flutter/material.dart';
import 'package:moneyapp/screens/account.dart';
import 'package:moneyapp/screens/intropage.dart';

import 'package:provider/provider.dart';
import '../themeprovider.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Padding(
            padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "Hello John",
                          style: TextStyle(
                            fontSize: 29,
                            fontWeight: FontWeight.w600,
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Color.fromRGBO(0, 128, 128, 1),
                        child: Icon(
                          Icons.person_2_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "John Doe",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color:
                          isDarkMode
                              ? Colors.white70
                              : Color.fromRGBO(0, 0, 0, 0.6),
                    ),
                  ),
                  const SizedBox(height: 49),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Enable finger Print/Face ID",
                            style: TextStyle(
                              color: isDarkMode ? Colors.white : Colors.black,
                            ),
                          ),
                          Switch(value: false, onChanged: (value) {}),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              "Show Dashboard Account Balances",
                              style: TextStyle(
                                color: isDarkMode ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                          Switch(value: false, onChanged: (value) {}),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 26),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap:
                              () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Account(),
                                ),
                              ),
                          child: Container(
                            height: 62,
                            width: constraints.maxWidth * 0.45,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(0, 128, 128, 1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Create Account",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Start now",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 14),
                        Container(
                          height: 62,
                          width: constraints.maxWidth * 0.45,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(0, 128, 128, 1),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "0",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Referral Point",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 28),
                  _buildSettingsList(isDarkMode, themeProvider),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildSettingsList(bool isDarkMode, ThemeProvider themeProvider) {
    final List<Map<String, dynamic>> settingsItems = [
      {'icon': Icons.newspaper, 'text': 'Generate Account Statement'},
      {'icon': Icons.settings, 'text': 'My Account Settings'},
      {'icon': Icons.dark_mode, 'text': 'Enable Dark Mode', 'switch': true},
      {'icon': Icons.help, 'text': 'Self Help'},
      {'icon': Icons.security, 'text': 'Security'},
      {
        'icon': Image.asset("assets/withdraw.png"),
        'text': 'Withdraw Funds',
        'isImage': true,
      },
      {'icon': Icons.credit_card, 'text': 'My Debit Cards & Linked Banks'},
      {
        'icon': Image.asset("assets/bank.png"),
        'text': 'Withrawal Bank',
        'isImage': true,
      },
      {'icon': Icons.card_giftcard, 'text': 'Refer & Earn'},
      {'icon': Icons.chat, 'text': 'Contact US'},
      {'icon': Icons.update, 'text': 'Check for Update'},
    ];

    return Column(
      children: [
        for (var item in settingsItems)
          Padding(
            padding: const EdgeInsets.only(bottom: 28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromRGBO(0, 128, 128, 1),
                      child:
                          item['isImage'] == true
                              ? item['icon']
                              : Icon(item['icon'], color: Colors.black),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      item['text'],
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
                if (item['switch'] == true)
                  Switch(
                    activeColor: Color.fromRGBO(0, 128, 128, 1),
                    value: isDarkMode,
                    onChanged: (value) {
                      themeProvider.toggleTheme(value);
                    },
                  ),
              ],
            ),
          ),
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Color.fromRGBO(254, 5, 5, 1),
              child: Icon(Icons.logout, color: Colors.black),
            ),
            const SizedBox(width: 8),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Intropage()),
                );
              },
              child: Text(
                "Log Out",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(254, 5, 5, 1),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
