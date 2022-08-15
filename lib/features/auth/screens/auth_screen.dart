import 'package:flutter/material.dart';
import 'package:some_thing123/common/widget/custom_button.dart';
import 'package:some_thing123/common/widget/custom_textfield.dart';
import 'package:some_thing123/constants/global_variables.dart';

enum Auth {
  signin,
  signup,
}

class AuthScreen extends StatefulWidget {
  static const String routeName ='/auth-screen';
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signinFormKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Globalvariables.greyBackgroundCOlor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text('welcome', style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
            ),
            ListTile(
              tileColor: _auth == Auth.signup 
              ? Globalvariables.backgroundColor 
              : Globalvariables.greyBackgroundCOlor,
              title: const Text('create account', style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
              leading: Radio(
                activeColor: Globalvariables.secondaryColor,
                value: Auth.signup,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                }
              ),
            ),
            if(_auth == Auth.signup)
            Container(
              padding: const EdgeInsets.all(8),
              color: Globalvariables.backgroundColor,
              child: Form(
                key: _signUpFormKey,
                child: Column(
                  children: [
                    CustomTextfield(
                      controller: _nameController,
                      hintText: 'name',
                      ),
                      const SizedBox( height: 8,),
                    
                    CustomTextfield(
                      controller: _emailController,
                      hintText: 'email',
                      ),
                      const SizedBox( height: 8,),
                       CustomTextfield(
                      controller: _passwordController,
                      hintText: 'password',
                      ),
                      const SizedBox( height: 8,),
                      CustomButton(text: 'sigh-up', onTap: () {})
                  ],

                ),
              ),
            ),
            ListTile(
                tileColor: _auth == Auth.signin
              ? Globalvariables.backgroundColor 
              : Globalvariables.greyBackgroundCOlor,
              title: const Text('Sign-in ', style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              ),
              leading: Radio(
                activeColor: Globalvariables.secondaryColor,
                value: Auth.signin,
                groupValue: _auth,
                onChanged: (Auth? val) {
                  setState(() {
                    _auth = val!;
                  });
                }
              ),
            ),
            if(_auth == Auth.signin)
            Container(
              padding: const EdgeInsets.all(8),
              color: Globalvariables.backgroundColor,
              child: Form(
                key: _signUpFormKey,
                child: Column(
                  children: [
                      const SizedBox( height: 8,),
                    
                    CustomTextfield(
                      controller: _emailController,
                      hintText: 'email',
                      ),
                      const SizedBox( height: 8,),
                       CustomTextfield(
                      controller: _passwordController,
                      hintText: 'password',
                      ),
                      const SizedBox( height: 8,),
                      CustomButton(text: 'sigh-in', onTap: () {}),
                  ],

                ),
              ),
            ),
          ],
      ),
        ),
      ),
    );
  }
}