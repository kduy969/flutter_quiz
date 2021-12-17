import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quiz/log/index.dart';
import 'package:quiz/services/auth.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: Column(
            children: <Widget>[
              FlutterLogo(size: 120),
              Container(
                margin: const EdgeInsets.only(top: 100),
                child: ElevatedButton(
                  onPressed: () async {
                    UserCredential userCre = await AuthService.anonLogin();
                    Navigator.of(context).pushReplacementNamed('/Home');
                    final user = FirebaseAuth.instance.currentUser;
                    logger.d(['User after login', user, userCre]);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('LOGIN ANONYMOUS'),
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
