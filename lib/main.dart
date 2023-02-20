import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:musicapp/screens/homescreen.dart';
import 'package:musicapp/screens/signin.dart';
import 'package:musicapp/screens/signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    title: 'Weather App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColor: Colors.greenAccent),
    home: SignIn(),
    getPages: [
      GetPage(name: '/', page: () => SignIn()),
      GetPage(name: '/login', page: () => SignUp()),
      GetPage(name: '/home', page: () => HomeScreen()),
    ],
  ));
}
