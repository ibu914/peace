import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:peace/utils/yasai_description.dart';

class SubPage extends StatefulWidget{

  // 画面遷移元からのデータを受け取る変数
  final String Yasai;
  final String image;
  final YasaiDesc yasaiDesc;


  // コンストラクタ
  const SubPage({Key? key, required this.Yasai,required this.image,required this.yasaiDesc}) : super(key: key);


  @override
  State<SubPage> createState() => SubPageState();

}

class SubPageState extends State<SubPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.green,
        title: Text(widget.Yasai),
      ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Image.asset(widget.image, fit: BoxFit.cover,),
                      width: 200,
                      height: 100,
                    ),
                    const SizedBox(width: 8),
                    Column(
                      children: [
                        Text(widget.Yasai,style: TextStyle(fontWeight: FontWeight.bold,)),
                        const Text('主な旬 / 3月～5月初旬',overflow: TextOverflow.ellipsis),
                        const Text('原産地 / ヨーロッパ',overflow: TextOverflow.ellipsis),
                        const Text('分類　/ アブラナ科',overflow: TextOverflow.ellipsis),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey,
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Container(
                      color: Colors.green,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: Text('選び方', style: TextStyle(color:Colors.white),),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(widget.Yasai + 'の選び方'),
                    //const SizedBox(width: 8),
                    //Text("・外葉がついていて新鮮（鮮度を確認できる）・軸の切り口が新しめで黒ずんでいない・軸が太すぎない（500円玉程度）・葉の緑が濃い・葉がみずみずしくツヤがある", maxLines:1, overflow: TextOverflow.ellipsis,),
                  ],
                ),
                const SizedBox(height: 30),
                const Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey,
                ),

                const SizedBox(height: 30),
                Row(
                  children: [
                    Container(
                      color: Colors.green,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: Text('常温保存',style: TextStyle(color:Colors.white),),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(widget.yasaiDesc.commonDate, maxLines:1, overflow: TextOverflow.ellipsis,),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Text(widget.yasaiDesc.commonDesc, maxLines:2, overflow: TextOverflow.ellipsis,),
                  ],
                ),
                const SizedBox(height: 30),
                const Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey,
                ),

                const SizedBox(height: 30),
                Row(
                  children: [
                    Container(
                      color: Colors.green,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: Text('冷蔵保存', style: TextStyle(color:Colors.white),),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(widget.yasaiDesc.frozenDate, maxLines:1, overflow: TextOverflow.ellipsis,)
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                    Text(widget.yasaiDesc.frozenDesc, maxLines:2, overflow: TextOverflow.ellipsis,),
                  ],
                ),
                const SizedBox(height: 30),
                const Divider(
                  height: 1,
                  thickness: 2,
                  color: Colors.grey,
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Container(
                      color: Colors.green,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: Text('冷凍保存', style: TextStyle(color:Colors.white),),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(widget.yasaiDesc.freezeDate, maxLines:1, overflow: TextOverflow.ellipsis,),
                  ],
                ),
                const SizedBox(height: 10),
                Column(
                  children: [
                   Text(widget.yasaiDesc.freezeDesc, maxLines:2, overflow: TextOverflow.ellipsis,),
                  ],
                ),
                const SizedBox(height: 30),
                const Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey,
                ),

                //追加(画面遷移ボタン)2022/12/01
                /*Column(
                  children: [
                    TextButton(
                      child:Text("次に遷移"),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GazouPage(title: '',), // GazouPageは遷移先のクラス
                          ),
                        );
                      },

                    )
                  ],
                ),
                */
              ],
            ),
          ),
        )
    );
  }
}