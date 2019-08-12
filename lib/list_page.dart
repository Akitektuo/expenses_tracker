import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './bottom_bar.dart';
import './expenses.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  setLightStatusBar() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white10,
        statusBarIconBrightness: Brightness.dark));
  }

  @override
  Widget build(BuildContext context) {
    setLightStatusBar();

    return Scaffold(
      body: ListView.builder(
        reverse: true,
        padding: EdgeInsets.all(16),
        itemCount: 100,
        itemBuilder: (context, index) => Text("Item $index"),
      ),
      bottomNavigationBar: BottomBar(100)
    );
  }
}
