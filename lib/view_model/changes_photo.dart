import 'package:flutter/widgets.dart';
import 'package:photo_data_using_api/data/network.dart';
import 'package:photo_data_using_api/model/photo_model.dart';

class ChangesPhoto with ChangeNotifier{

  Network _network = Network();
  List<PhotoModel> photoList = [];
  Future<List<PhotoModel>> getPhotoData()async{
   photoList = await _network.fetchPhotoData();
   return photoList;
  }
}