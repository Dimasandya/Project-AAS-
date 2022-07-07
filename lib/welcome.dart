import 'package:aas_dimaskanjeng/login.dart';
import 'package:aas_dimaskanjeng/register.dart';
import 'package:aas_dimaskanjeng/style.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 232, 232),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                margin: EdgeInsets.only(top: 60),
                child: Image.asset(
                  'logo.png',
                  width: 550,
                  height: 270,
                )),
            Container(
              padding: EdgeInsets.only(right: 22, left: 22),
              height: 56,
              margin: EdgeInsets.only(bottom: 15, top: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }));
                },
                child: Text(
                  "Login",
                  style: LoginText,
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    primary: Color.fromARGB(255, 43, 0, 93)),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 22, left: 22),
              height: 56,
              margin: EdgeInsets.only(bottom: 20),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RegisterPage();
                  }));
                },
                child: Text(
                  "Register",
                  style: LoginText,
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    primary: Color.fromARGB(255, 43, 0, 93)),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Continue as a guest",
                  style: Font1,
                )),
          ],
        ),
      ),
    );
  }
}
