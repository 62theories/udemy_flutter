import 'dart:async';

import 'package:flutter/material.dart';
import 'package:udemy4/src/blocs/stories_provider.dart';
import 'package:udemy4/src/blocs/stories_bloc.dart';

class NewsList extends StatelessWidget {
  Widget build(BuildContext context) {
    final bloc = StoriesProvider.of(context);
    // bloc.fetchTopIds();
    return Scaffold(
      appBar: AppBar(
        title: Text('top news'),
      ),
      body: buildList(bloc),
    );
  }

  Widget buildList(StoriesBloc bloc) {
    return StreamBuilder(
      stream: bloc.topIds,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return ListView.builder(
          itemBuilder: (context, int index) {
            return Text('${snapshot.data[index]}');
          },
          itemCount: snapshot.data.length,
        );
      },
    );
  }
}
