import 'package:flutter/material.dart';
import 'package:slamit/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = new AuthService();
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 60.0, right: 60.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "E-Mail"),
                    onChanged: (value) {
                      setState(() => _email = value);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 5.0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "Password"),
                    onChanged: (value) {
                      setState(() => _password = value);
                    },
                    obscureText: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 5.0),
                  child: FloatingActionButton(
                    child: Icon(Icons.arrow_right),
                    onPressed: () {
                      print(_email + _password);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
