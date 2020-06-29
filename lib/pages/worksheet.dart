import 'dart:typed_data';
import 'dart:ui' as ui;

//import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:funwaylearning/styleguide.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
//import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';


class worksheet extends StatefulWidget {
  @override
  _worksheetState createState() => _worksheetState();
}

class _worksheetState extends State<worksheet> {
  GlobalKey _globalKey = GlobalKey();

  @override
  void initState() {
    super.initState();

    _requestPermission();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          elevation: 0,
          title: Text("Learning Resources",style: AppTheme.page_heading1),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                RepaintBoundary(
                  key: _globalKey,
                  child: Container(
                    height: 600,
                    width: 400,
                    child: Image.asset(
                      "assets/images/worksheet.png", fit: BoxFit.cover,),
                    //width: MediaQuery.of(context).size;

                    color: Colors.grey,
                  ),
                ),
                Container(

                  padding: EdgeInsets.only(top: 15),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.red)
                    ),
                    color: Colors.orangeAccent,
                    onPressed: _saveScreen,
                    child: Text("Download Worksheet"),
                  ),
                  width: 200,
                  height: 60,
                ),

              ],
            ),
          ),
        ));
  }

  _requestPermission() async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.storage,
    ].request();

    final info = statuses[Permission.storage].toString();
    print(info);
    _toastInfo(info);
  }

  _saveScreen() async {
    RenderRepaintBoundary boundary =
    _globalKey.currentContext.findRenderObject();
    ui.Image image = await boundary.toImage();
    ByteData byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    final result =
    await ImageGallerySaver.saveImage(byteData.buffer.asUint8List());
    print(result);
    _toastInfo(result.toString());
  }


  _toastInfo(String info) {
    Fluttertoast.showToast(msg: info, toastLength: Toast.LENGTH_LONG);
  }
}