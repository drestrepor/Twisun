import 'package:flutter/material.dart';

class DisplayCharts extends StatelessWidget {
  final img;
  final text;
  DisplayCharts(this.img, this.text);
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
            ])),
            Positioned(
                bottom: 370,
                right: 0,
                left: 0,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/batchart');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.black87),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 60, right: 60, top: 20, bottom: 20),
                          child: Text(
                            'Battery Consumption',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/batchartTempr');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.black87),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 62, right: 62, top: 20, bottom: 20),
                          child: Text(
                            'Battery Temperature',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
