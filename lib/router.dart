import 'package:flutter/material.dart';
import 'package:some_thing123/features/auth/screens/auth_screen.dart';

Route<dynamic> generateRoute( RouteSettings routeSettings ){
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const AuthScreen(),
      );
      default:
        return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('screen not found lol :)'),
          ),
        ),
      );
  }



}