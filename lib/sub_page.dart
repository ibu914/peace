import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:peace/main_page.dart';

class SubPage extends StatefulWidget{

  // 画面遷移元からのデータを受け取る変数
  final String Yasai;
  final String image;

  // コンストラクタ
  const SubPage({Key? key, required this.Yasai,required this.image,}) : super(key: key);

  @override
  State<SubPage> createState() => SubPageState();

}

class SubPageState extends State<SubPage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.Yasai),
      ),
      body: Column(
        children: [
          Container(
              child: Image.asset(widget.image)
          ),
          const Text('野菜保存方法')
        ],
      )
    );
  }
}