import 'package:flutter/material.dart';
import 'package:soccer/player_container.dart';

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
          defensePlayersMethod(),
          middlePlayersMethod(),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                PlayerContainer("LS", "7"),
                PlayerContainer("RS", "9"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding middlePlayersMethod() {
    return Padding(
      padding: const EdgeInsets.only(top: 400),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PlayerContainer("LM", "34"),
          PlayerContainer("LCM", "8"),
          PlayerContainer("RCM", "32"),
          PlayerContainer("RM", "14"),
        ],
      ),
    );
  }

  Padding defensePlayersMethod() {
    return Padding(
      padding: const EdgeInsets.only(top: 600),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PlayerContainer("LB", "3"),
          PlayerContainer("LCB", "22"),
          PlayerContainer("RCB", "16"),
          PlayerContainer("RB", "2"),
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
            height: 110.0,
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
              const EdgeInsets.only(left: 155.0, right: 145.0, bottom: 115.0),
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
        Padding(
          padding:
              const EdgeInsets.only(left: 155.0, right: 145.0, bottom: 699.0),
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
