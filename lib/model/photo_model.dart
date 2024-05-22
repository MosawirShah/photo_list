class PhotoModel {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  PhotoModel(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});

  factory PhotoModel.fromJson(Map<String, dynamic> jsonData) {
    return PhotoModel(
        albumId: jsonData['albumId'],
        id: jsonData['id'],
        title: jsonData['title'],
        url: jsonData['url'],
        thumbnailUrl: jsonData['thumbnailUrl']);
  }
}
