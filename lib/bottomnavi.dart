import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:peace/main_page.dart';
import 'package:peace/gazou_page.dart';
import 'package:peace/reusable_widgets/reusable_widgets.dart';
import 'package:peace/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:peace/utils/color_utils.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _MyappState();
}

class _MyappState extends State<Nav> {
  static const String _title = 'Flutter Code Sample';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // 表示中の Widget を取り出すための index としての int 型の mutable な stored property
  int _selectedIndex = 0;

  // 表示する Widget の一覧
  static List<Widget> _pageList = [
    CameraPage(),
    SavePage(),
    CustomPage(pannelColor: Colors.green, title: '設定')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(backgroundColor: Colors.green),
      body: _pageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label:('カメラ'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label:('保存方法'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label:('設定'),
          ),
        ],

        currentIndex: _selectedIndex,
        onTap: _OnItemTapped,
      ),
    );
  }

  void _OnItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

//カメラのページ
class CameraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: GazouPage(title: '写真',)
    );
  }
}

//保存方法のページ
class SavePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Yasai()
    );
  }
}
// 設定のページ
class CustomPage extends StatelessWidget{
  final Color pannelColor;
  final String title;

  CustomPage({required this.pannelColor, required this.title});

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
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            logoWidget2("assets/images/peace3.png"),
            logoWidget("assets/images/yasai.png"),
            const SizedBox(height: 30),
            ElevatedButton(
              child: Text("ログアウト"),
              onPressed: (){
                FirebaseAuth.instance.signOut().then((value){
                  print("ログアウト");

                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Login())
                  );
                });
              },
              style: ElevatedButton.styleFrom(
                //backgroundColor: MaterialStateProperty.all(Colors.green),
                primary: Colors.green,
                //minimumSize: MaterialStateProperty.all(const Size(300, 30)),
                fixedSize: Size(300, 50), // サイズ変更
                shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(30),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


