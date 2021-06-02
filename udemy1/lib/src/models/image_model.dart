class ImageModel {
  String title;
  int id;
  String url;

  ImageModel(this.id, this.url, this.title);

  ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    title = parsedJson['title'];
    url = parsedJson['url'];
  }

  // ImageModel.fromJson(Map<String, dynamic> parsedJson)
  //     : id = parsedJson['id'],
  //       title = parsedJson['title'],
  //       url = parsedJson['url'];
}
