import 'package:flutter/material.dart';
import 'package:some_thing123/constants/global_variables.dart';

class AuthScreen extends StatefulWidget {
  static const String routeName ='/auth-screen';
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    Navigator.pushNamed(context, "");
    return Scaffold(
      backgroundColor: Globalvariables.greyBackgroundCOlor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          children:  [
            const Text('welcome')
          ],
      ),
        ),
      ),
    );
  }
}