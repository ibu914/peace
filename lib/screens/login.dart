import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:peace/reusable_widgets/reusable_widgets.dart';
import 'package:peace/bottomnavi.dart';
import 'package:peace/screens/signup.dart';
import 'package:peace/utils/color_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController  _passwordTextController = TextEditingController();
  TextEditingController  _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors:[
              hexStringToColor("569606"),
              hexStringToColor("569606"),
              hexStringToColor("ffffff")
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/yasai.png"),
                SizedBox(
                  height: 30,
                ),
                reusableTextField("ユーザー名", Icons.person_outline, false,
                    _emailTextController),
                SizedBox(
                  height: 20,
                ),
                reusableTextField("パスワード", Icons.lock_outline, true,
                    _passwordTextController),
                SizedBox(
                  height: 20,
                ),
                signInSignUpButton(context, true, (){
                  FirebaseAuth.instance.signInWithEmailAndPassword(
                      email: _emailTextController.text,
                      password: _passwordTextController.text)
                      .then((value) {
                    print("ログイン");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Nav()));
                  }).onError((error, stackTrace){
                    print("Error ${error.toString()}");
                  });
                }),
                signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row signUpOption(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("アカウントを作成しますか？",
            style: TextStyle(color: Colors.black87)),
        GestureDetector(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUp()));
          },
          child: const Text(
            "サインアップ",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
