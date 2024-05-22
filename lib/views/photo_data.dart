import 'package:flutter/material.dart';
import 'package:photo_data_using_api/view_model/changes_photo.dart';
import 'package:provider/provider.dart';

class PhotoData extends StatelessWidget {
  const PhotoData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ChangesPhoto>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Photo Data",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey,
        child: FutureBuilder(
          future: provider.getPhotoData(),
          builder: (context,snaphot){
            if(!snaphot.hasData){
              return Center(child: CircularProgressIndicator(
                color: Colors.red,
              ),);
            }else{
              return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.5,
                crossAxisSpacing: 14,
                mainAxisSpacing: 0
              ), itemBuilder: (context, index){
                return Container(
                  child: Column(
                    children: [
                      Text(provider.photoList[index].title),
                      Image(image: NetworkImage(provider.photoList[index].url),)
                    ],
                  ),
                );
              });
            }
          },
        ),
      ),
    );
  }
}
