import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:peace/sub_page.dart';

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
      _photoItem("kyabetu","キャベツ"),
      _photoItem("tamanegi","タマネギ"),
      _photoItem("jyaga","ジャガイモ"),
      _photoItem("retasu","レタス"),
      _photoItem("bro","ブロッコリー"),
      _photoItem("daikon","ダイコン"),
      _photoItem("nasu","ナスビ"),
      _photoItem("pman","ピーマン"),
      _photoItem("tomato","トマト"),
      _photoItem("toumorokosi","トウモロコシ"),
      _photoItem("kabotya","カボチャ"),
      _photoItem("kinoko","キノコ"),
      _photoItem("papurika","パプリカ"),
      _photoItem("eringi","エリンギ"),
    ];

    var list1 = [
      _photoItem("kyabetu","キャベツ"),
      _photoItem("tamanegi","タマネギ"),
      //_photoItem("jyaga","ジャガイモ"),
      _photoItem("retasu","レタス"),
      //_photoItem("bro","ブロッコリー"),
      _photoItem("daikon","ダイコン"),
      //_photoItem("nasu","ナスビ"),
      //_photoItem("pman","ピーマン"),
      //_photoItem("tomato","トマト"),
      //_photoItem("toumorokosi","トウモロコシ"),
      //_photoItem("kabotya","カボチャ"),
      //_photoItem("kinoko","キノコ"),
      //_photoItem("papurika","パプリカ"),
      //_photoItem("eringi","エリンギ"),
    ];

    var list2 = [
      //_photoItem("kyabetu","キャベツ"),
      //_photoItem("tamanegi","タマネギ"),
      //_photoItem("jyaga","ジャガイモ"),
      //_photoItem("retasu","レタス"),
      _photoItem("bro","ブロッコリー"),
      //_photoItem("daikon","ダイコン"),
      _photoItem("nasu","ナスビ"),
      _photoItem("pman","ピーマン"),
      _photoItem("tomato","トマト"),
      _photoItem("toumorokosi","トウモロコシ"),
      _photoItem("kabotya","カボチャ"),
      //_photoItem("kinoko","キノコ"),
      _photoItem("papurika","パプリカ"),
      //_photoItem("eringi","エリンギ"),
    ];

    var list3 = [
      //_photoItem("kyabetu","キャベツ"),
      //_photoItem("tamanegi","タマネギ"),
      _photoItem("jyaga","ジャガイモ"),
      //_photoItem("retasu","レタス"),
      //_photoItem("bro","ブロッコリー"),
      //_photoItem("daikon","ダイコン"),
      //_photoItem("nasu","ナスビ"),
      //_photoItem("pman","ピーマン"),
      //_photoItem("tomato","トマト"),
      //_photoItem("toumorokosi","トウモロコシ"),
      //_photoItem("kabotya","カボチャ"),
      _photoItem("kinoko","キノコ"),
      //_photoItem("papurika","パプリカ"),
      _photoItem("eringi","エリンギ"),
    ];


    return DefaultTabController(
      // タブの数
      length: 4,

      child:Scaffold(
        appBar: PreferredSize(
          child:  AppBar(
            title: SizedBox(
              height: 40,
              child: Container(
                  decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(30.0),
                  ),

                child: Center(
                  child: Container(
                    width: 340,
                    margin: const EdgeInsets.symmetric(vertical: 6.0),
                    child: TextField(
                        controller: _controller,
                        decoration: const InputDecoration(
                          hintText: '検索',
                          prefixIcon: Icon(Icons.search),
                          suffixIcon: Icon(Icons.clear),
                          contentPadding: EdgeInsets.only(left: 8.0),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          isDense: true,
                        ),
                        onSubmitted: (text) => _submission(text),
                      onChanged: (value) => setState(() {
                        print(value);
                      }),
                    ),
                  ),
                ),
              ),
            ),

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
          preferredSize: Size.fromHeight(110),
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
  Widget _photoItem(String image,String Name) {
    var assetsImage = "images/" + image + ".jpg";
    return GestureDetector(
        child: Card(
          child: Column(
            children:[
              Image.asset(assetsImage, fit: BoxFit.cover,),
              Text(Name),
            ]
          )
        ),
        onTap: (){
          // ここにボタンを押した時に呼ばれるコードを書く
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SubPage(Yasai: Name, image: assetsImage,)),
          );
        },
    );
  }
}

