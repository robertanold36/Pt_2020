import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String tag;
  final String title;
  final String buttonText;

  const Header({Key key, this.tag, this.title, this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(tag),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
            ),
            GestureDetector(
              onTap: () {
                print("clicked the button");
              },
              child: Chip(
                label: Text(
                  buttonText,
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Colors.pink,
              ),
            )
          ],
        ),
      ],
    );
  }
}
