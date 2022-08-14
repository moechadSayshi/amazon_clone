import 'package:flutter/material.dart';
import 'package:some_thing123/constants/global_variables.dart';
import 'package:some_thing123/features/auth/screens/auth_screen.dart';
import 'package:some_thing123/router.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'amazon clone',
      theme: ThemeData(
        
        scaffoldBackgroundColor: Globalvariables.backgroundColor,
        colorScheme:  const ColorScheme.light(),
        primaryColor: Globalvariables.secondaryColor,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black,)
        )
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home:  const AuthScreen(),
                     );
  }
}
 
