import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final double _total;

  BottomBar(this._total);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: Column(
        children: [
          Container(
            height: 1,
            margin: EdgeInsets.symmetric(horizontal: 16),
            color: Colors.grey,
          ),
          Container(
            height: 47,
            child: Center(
              child: Text(
                "Total: $_total RON",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
