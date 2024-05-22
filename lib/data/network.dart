import 'dart:convert';

import 'package:http/http.dart';
import 'package:photo_data_using_api/model/photo_model.dart';

class Network{

  List<PhotoModel> photoList = [];
  Future<List<PhotoModel>> fetchPhotoData() async{
    final response = await get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    var data = jsonDecode(response.body);
        if(response.statusCode == 200){
      for(Map<String, dynamic> map in data){
        photoList.add(PhotoModel.fromJson(map));
      }
      return photoList;
    }else{
          return photoList;
        }
  }
}