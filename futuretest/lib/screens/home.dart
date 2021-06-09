import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:futuretest/models/image_url.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var imageUrl = context.watch<ImageUrl>();
    return Scaffold(
      appBar: AppBar(
        title: Text('future test'),
      ),
      body: Container(
          child: Column(
        children: [
          Text(imageUrl.url),
          ElevatedButton(
              onPressed: () {
                imageUrl.url = 'https://via.placeholder.com/600/92c952';
              },
              child: Text('test'))
        ],
      )
          // FutureBuilder(
          //   future: getFuture(),
          //   builder: (context, snapshot) {
          //     if (!snapshot.hasData) {
          //       return Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     }
          //     return Image.network(snapshot.data);
          //   },
          // ),
          ),
    );
  }

  Future<String> getFuture() {
    return Future.delayed(
        Duration(seconds: 5), () => 'https://via.placeholder.com/600/92c952');
  }
}
