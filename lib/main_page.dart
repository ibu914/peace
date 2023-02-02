import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:peace/reusable_widgets/reusable_widgets.dart';
import 'package:peace/sub_page.dart';
import 'package:peace/utils/yasai_description.dart';

class Yasai extends StatefulWidget{
  const Yasai({Key? key}) : super(key: key);

  @override
  State<Yasai> createState() => YasaiState();
}

class YasaiState extends State<Yasai> {
  final _controller = TextEditingController();

  void _submission(text) {
    setState(() {
      _controller.clear();
      print(text);
    });
  }

  @override
  Widget build(BuildContext context) {

    var listall= [
      _photoItem(kyabetu),
      _photoItem(tamanegi),
      _photoItem(jyagaimo),
      _photoItem(retasu),
      _photoItem(bro),
      _photoItem(daikon),
      _photoItem(nasubi),
      _photoItem(pman),
      _photoItem(tomato),
      _photoItem(toumorokosi),
      _photoItem(kabotya),
      _photoItem(kinoko),
      _photoItem(papurika),
      _photoItem(eringi),
    ];

    var list1 = [
      _photoItem(kyabetu),
      _photoItem(tamanegi),
      _photoItem(daikon),
      _photoItem(retasu),
    ];

    var list2 = [
      _photoItem(bro),
      _photoItem(nasubi),
      _photoItem(pman),
      _photoItem(tomato),
      _photoItem(toumorokosi),
      _photoItem(kabotya),
      _photoItem(papurika),
    ];

    var list3 = [
      _photoItem(jyagaimo),
      _photoItem(eringi),
      _photoItem(kinoko),
    ];


    return DefaultTabController(
      // タブの数
      length: 4,

      child:Scaffold(
          backgroundColor: Colors.white, // 背景色設定
        appBar: PreferredSize(
          child:  AppBar(
            backgroundColor:Colors.green,


            bottom: TabBar(
              // タブのオプション
              isScrollable: true,
              unselectedLabelColor: Colors.white.withOpacity(0.3),
              indicatorColor: Colors.white,
              labelColor: Colors.yellowAccent,
              labelStyle: TextStyle(fontSize: 16.0),
              unselectedLabelStyle: TextStyle(fontSize: 13.0),
              indicatorWeight: 2.0,
              // タブに表示する内容
              tabs: [
                Tab(
                  child: Text('全て(10)'),
                ),
                Tab(
                  child: Text('淡色野菜(5)'),
                ),
                Tab(
                  child: Text('緑黄色野菜(5)'),
                ),
                Tab(
                  child: Text('いも・きのこ類(3)'),
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(48),
        ),

        body: TabBarView(children: [
          GridView.count(
              crossAxisCount: 3,
              children: listall
          ),
          GridView.count(
              crossAxisCount: 3,
              children: list1
          ),
          GridView.count(
              crossAxisCount: 3,
              children: list2
          ),
          GridView.count(
              crossAxisCount: 3,
              children: list3
          ),

        ],)
      )
    );
  }
  Widget _photoItem(YasaiDesc yasai) {
    var assetsImage = "images/" + yasai.RomanName + ".jpg";
    return GestureDetector(
        child: Card(
          /*shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(80),
          ),*/
          child: Column(
            children:[
              Image.asset(assetsImage, fit: BoxFit.cover,),
              Text(yasai.name),
            ]
          )
        ),
        onTap: (){
          // ここにボタンを押した時に呼ばれるコードを書く
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SubPage(Yasai: yasai.name, image: assetsImage, yasaiDesc: yasai)),
          );
        },
    );
  }
}

