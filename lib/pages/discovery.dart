import 'package:flutter/material.dart';
import 'package:flutter_app/widget/header.dart';

class DiscoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Header(
        tag: 'RECENT POSTS',
        title: 'SPORTS',
        buttonText: 'SEE ALL',
      ),
    );
  }
}
