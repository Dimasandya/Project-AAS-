import 'package:aas_dimaskanjeng/login.dart';
import 'package:aas_dimaskanjeng/style.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 232, 232),
      body: const MyForm(),
    );
  }
}

class MyForm extends StatelessWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: AlignmentDirectional.centerStart,
          margin: EdgeInsets.only(left: 22),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Center(
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(45, 45),
                maximumSize: const Size(45, 45),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                primary: Colors.white),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(15),
          child: Center(
            child: Image.asset(
              'logo.png',
              width: 300,
              height: 150,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            style: Login,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              labelText: 'Username',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: TextFormField(
            obscureText: true,
            style: Login,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              labelText: 'Password',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            obscureText: true,
            style: Login,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              labelText: 'Confirm Password',
            ),
          ),
        ),
        Padding(
          child: Container(
            margin: EdgeInsets.only(bottom: 20, top: 10),
            width: 600,
            height: 56,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginPage();
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
          padding: EdgeInsets.symmetric(horizontal: 20),
        ),
        Row(children: <Widget>[
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          Text(
            'Or Register with',
            style: Login,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 104,
                      height: 57,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          'fb.png',
                          width: 30,
                        ),
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                      ),
                    ),
                    padding: EdgeInsets.all(5)),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 104,
                      height: 57,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          'google.png',
                          width: 30,
                        ),
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                      ),
                    ),
                    padding: EdgeInsets.all(5)),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 104,
                      height: 57,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          'apple.png',
                          width: 30,
                        ),
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                      ),
                    ),
                    padding: EdgeInsets.all(5)),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                    child: Container(
                      child: Text(
                        "Already have an account?",
                        style: Login1,
                      ),
                    ),
                    padding: EdgeInsets.only(top: 20)),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                    child: Container(
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Login Now",
                            style: Register,
                          )),
                    ),
                    padding: EdgeInsets.only(top: 20)),
              ],
            ),
          ],
        )
      ],
    );
  }
}
