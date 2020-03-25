import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:slamit/models/user.dart';
import 'package:slamit/pages/authenticate/authenticate.dart';
import 'package:slamit/pages/home/home.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    Widget _userState = Container();

    if (user == null) {
      setState(() {
        _userState = Authenticate();
      });
    } else {
      setState(() {
        _userState = HomePage();
      });
    }
    // return either home or authentication page
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: _userState,
    );
  }
}
