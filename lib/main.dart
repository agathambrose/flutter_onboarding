import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screens/LoginForm.dart';
import 'Screens/HomeForm.dart';

// void main() {
//   runApp(MyApp());
// }
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var status = prefs.getBool('isLoggedIn') ?? false;
  print(status);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login with Signup',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: status == true ? LoginForm() : HomeForm(),
    ),
  );
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Login with Signup',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: LoginForm(),
//     );
//   }
// }
