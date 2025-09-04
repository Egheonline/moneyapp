import 'package:flutter/material.dart';
import 'screens/account.dart';
import 'screens/confirmpin.dart';
import 'screens/createpin.dart';
import 'screens/emailconfirm.dart';
import 'screens/intropage.dart';
import 'screens/login.dart';
import 'screens/mainnavigation.dart';
import 'screens/pin.dart';
import 'screens/profile.dart';
import 'screens/savings.dart';
import 'screens/signup.dart';
import 'screens/welcome.dart';
import 'themeprovider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MoneyApp(),
    ),
  );
}

class MoneyApp extends StatefulWidget {
  const MoneyApp({super.key});

  @override
  State<MoneyApp> createState() => _MoneyAppState();
}

class _MoneyAppState extends State<MoneyApp> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: themeProvider.themeMode,
      home: Welcome(),
      title: 'Money App',
      initialRoute: '/intro',
      routes: {
        '/intro': (context) => Intropage(),
        '/welcome': (context) => Welcome(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
        '/emailconfirm': (context) => Emailconfirm(),
        '/createpin': (context) => Createpin(),
        '/confirmpin': (context) => Confirmpin(),
        '/pin': (context) => Pin(),
        '/mainnav': (context) => MainNavigation(),
        '/account': (context) => Account(),
        '/savings': (context) => Savings(),
        '/profile': (context) => Profile(),
      },
    );
  }
}
