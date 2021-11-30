import 'package:flutter/material.dart';

class DisplayWidget extends StatelessWidget {
  final img;
  final text;
  DisplayWidget(this.img, this.text);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(img),
            ),
            Center(
                child: Column(children: [
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              )
            ]))
          ],
        ),
      ),
    );
  }
}
