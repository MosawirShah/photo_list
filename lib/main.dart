import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_data_using_api/view_model/changes_photo.dart';
import 'package:photo_data_using_api/views/photo_data.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(ChangeNotifierProvider(
    create: (contex) => ChangesPhoto(),
      child: MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PhotoData(),
    );
  }
}
