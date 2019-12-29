import 'package:flutter/material.dart';
import 'dart:async';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top News'),
      ),
      body: Text('Show a list'),
    );
  }

  Widget buildList() {
    return ListView.builder(
      itemCount: 1000,
      itemBuilder: (context, int index) {
        return FutureBuilder(
          future: getFuture(),
          builder: (context, snapshot) {
            return Container(
              height: 80.0,
              child: snapshot.hasData
                  ? Text('Im visible $index')
                  : Text('I havent fetched data $index'),
            );
          },
        );
      },
    );
  }

  Future getFuture() {
    return Future.delayed(
      Duration(seconds: 2),
      () => 'hi',
    );
  }
}
