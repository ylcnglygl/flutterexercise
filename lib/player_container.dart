import 'package:flutter/material.dart';

class PlayerContainer extends StatelessWidget {
  String name;
  String number;
  PlayerContainer(this.name, this.number);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 24.0,
          width: 24.0,
          decoration: const BoxDecoration(
            color: Color(0xff36B585),
            shape: BoxShape.circle,
          ),
          child: Center(
              child: Text(
            number,
            style: const TextStyle(color: Colors.white),
          )),
        ),
        const SizedBox(height: 4.5),
        Container(
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xff558F78),
          ),
          child: Center(
            child: Text(
              name,
              maxLines: 1,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        )
      ],
    );
  }
}
