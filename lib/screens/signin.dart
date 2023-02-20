import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            Image.network(
                'https://th.bing.com/th?q=Individual+Weather+Icons&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.3&pid=InlineBloc'
                'k&mkt=en-XA&cc=EG&setlang=en&adlt=strict&t=1&mw=247'),
            Text(
              'Weather APP',
              style: TextStyle(
                  fontSize: 32, color: Colors.white, fontFamily: 'pacifico'),
            ),
            Spacer(
              flex: 2,
            ),
            Row(
              children: [
                Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.white)),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.white)),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Get.toNamed('/home');
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                width: double.infinity,
                height: 60,
                child: Center(child: Text('Sign In')),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'do not have an account?',
                  style: TextStyle(color: Colors.white),
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed('/login');
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
            Spacer(
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
