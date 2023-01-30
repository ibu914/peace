import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class GazouPage extends StatefulWidget{
  // コンストラクタ
  GazouPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<GazouPage> createState() => GazouPageState();

  Stream<Image> download() async* {

    FirebaseStorage storage = FirebaseStorage.instance;

    // 画像
    Reference ref = storage.ref().child("pictures/image.jpg");
    final String url = await ref.getDownloadURL();
    final img = Image(image: CachedNetworkImageProvider(url));
    print(img);
    yield img;
  }

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
          child: StreamBuilder(
            stream: widget.download(),
            builder: (context, AsyncSnapshot) {
              if(AsyncSnapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              }
              if(AsyncSnapshot.data == null){
                return const SizedBox.shrink();
              }

              print('image change');
              return AsyncSnapshot.data!;
            },
          ),
            // mainAxisAlignment: MainAxisAlignment.center,
            // children: <Widget>[
            //   //if (_text != null) _text,
            //   if (_img != null) _img!,
            // ],
           // child: Image.network("https://click.ecc.ac.jp/ecc/whisper_a/images/cats2.jpg")
        ),
        //floatingActionButton:
        // Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        //   FloatingActionButton(
        //     onPressed: _download,
        //     child: Icon(Icons.download_outlined),
        //   ),
        //   // FloatingActionButton(
        //   //   onPressed: _upload,
        //   //   child: Icon(Icons.upload_outlined),
        //   // ),
    );
  }
}



