import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../themeprovider.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  String selectedBank = 'Preferred Bank';

  final List<String> banks = ['Preferred Bank', 'UBA', 'ACCESS BANK', 'OPAY'];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.isDarkMode;
    return Scaffold(
      backgroundColor: colorScheme.surface,
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
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                  SizedBox(height: 34),
                  Container(
                    height: 86,
                    width: 81,
                    decoration: BoxDecoration(),
                    child: CircleAvatar(
                      radius: 45,
                      backgroundColor: Color.fromRGBO(0, 128, 128, 1),
                      child: Image.asset(
                        "assets/bank1.png",
                        height: 300,
                        width: 300,
                      ),
                    ),
                  ),
                  SizedBox(height: 48),
                  Center(
                    child: Text(
                      textAlign: TextAlign.center,
                      "Create an account Number \nto recieve Cash into your \nPOCKETSAVE account",
                      style: TextStyle(
                        color: isDarkMode ? Colors.white : Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(height: 65),
                  Text(
                    "Select Your Preferred Bank",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: isDarkMode ? Colors.white : Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10),
                  DropdownButton<String>(
                    focusColor: Colors.grey,
                    iconEnabledColor: Colors.grey,
                    iconDisabledColor: Colors.grey,
                    value: selectedBank,
                    onChanged: (String? newValue) {
                      if (newValue != 'Preferred Bank') {
                        setState(() {
                          selectedBank = newValue!;
                        });
                      }
                    },
                    items:
                        banks.map<DropdownMenuItem<String>>((String bank) {
                          return DropdownMenuItem<String>(
                            value: bank,

                            enabled: bank != 'Preferred Bank',
                            child: Text(
                              bank,
                              style: TextStyle(
                                color: isDarkMode ? Colors.white : Colors.black,
                              ),
                            ),
                          );
                        }).toList(),
                    isExpanded: true,
                    icon: Icon(Icons.arrow_drop_down),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color.fromRGBO(0, 128, 128, 1),
        unselectedItemColor: Colors.black,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: "Savings",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Invest"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
