import 'package:flutter/material.dart';
import 'package:peace/reusable_widgets/reusable_widgets.dart';
import 'package:peace/bottomnavi.dart';
import 'package:peace/utils/color_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController  _passwordTextController = TextEditingController();
  TextEditingController  _emailTextController = TextEditingController();
  TextEditingController  _userNameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "サインアップ",
          style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              hexStringToColor("569606"),
              hexStringToColor("569606"),
              hexStringToColor("ffffff")
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)
        ),
        child: SingleChildScrollView(child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, 120, 20, 0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              reusableTextField("ユーザー名", Icons.person_outline, false,
                  _userNameTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("メールアドレス", Icons.person_outline, false,
                  _emailTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("パスワード", Icons.lock_outlined, false,
                  _passwordTextController),
              const SizedBox(
                height: 20,
              ),
              signInSignUpButton(context, false, (){
                FirebaseAuth.instance
                    .createUserWithEmailAndPassword(
                    email: _emailTextController.text,
                    password: _passwordTextController.text)
                    .then((value) {
                  print("Create New Account");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Nav()));
                }).onError((error, stackTrace){
                  print("Error ${error.toString()}");
                });
              })
            ],
          ),
        ),),
      ),
    );
  }
}
