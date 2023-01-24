import 'package:flutter/material.dart';
import 'package:peace/bottomnavi.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:peace/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return const SizedBox();
          }
          if(snapshot.hasData){
            return Nav();
          }
          return Login();
        },
      ),
      //home Yasai(),
    );
  }
}