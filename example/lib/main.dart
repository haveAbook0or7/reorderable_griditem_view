import 'package:flutter/material.dart';
import 'package:reorderable_griditem_view/reorderable_griditem_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> _item = [];

  @override
  void initState() {
    super.initState();
    for(int i = 0; i < 4; i++){
      _item.add(Container(color: Colors.blue[(i+1)*100],));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: ReorderableGridview.builder(
          itemcount: _item.length, 
          keybuilder: (index){
            return index;
          },
          itembuilder: (index){
            return _item[index];
          },
        )
      ),
    );
  }
}
