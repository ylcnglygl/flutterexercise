import 'package:flutter/material.dart';

class StadiumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          backgroundColorMethod(context),
          rectangleBorderMethod(context),
          middleLineContainerMethod(context),
          middleCircleContainerMethod(context),
        ],
      ),
    );
  }

  Padding middleCircleContainerMethod(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2.0)),
          ),
        ],
      ),
    );
  }

  Padding middleLineContainerMethod(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 1.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Stack rectangleBorderMethod(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 294 / 400,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2.0)),
              ),
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 150.0, right: 150.0, bottom: 115.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 1 / 16,
                width: MediaQuery.of(context).size.width * 2 / 8,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2.0)),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Padding backgroundColorMethod(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 3 / 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: const Color(0xff6FCF97),
            ),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 1 / 8,
                  decoration: const BoxDecoration(
                    color: Color(0xff4FB58E),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0)),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 1 / 8),
                Container(
                  height: MediaQuery.of(context).size.height * 1 / 8,
                  decoration: const BoxDecoration(
                    color: Color(0xff4FB58E),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0)),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 1 / 8),
                Container(
                  height: MediaQuery.of(context).size.height * 1 / 8,
                  decoration: const BoxDecoration(
                    color: Color(0xff4FB58E),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
