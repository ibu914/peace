import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GazouPage extends StatefulWidget{
  // コンストラクタ
  const GazouPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<GazouPage> createState() => GazouPageState();

}

class GazouPageState extends State<GazouPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.green,
          title: Text(widget.title),
        ),
        body: Center(
          child: Image.network("https://click.ecc.ac.jp/ecc/whisper_a/images/cats2.jpg")

        ),
    );
  }
}



