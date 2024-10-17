import 'package:flutter/material.dart';

void main() {
  runApp(TaskManagerApp());
}

class TaskManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'タスク管理アプリ',
      home: TaskManagerHomePage(),
    );
  }
}

class TaskManagerHomePage extends StatefulWidget {
  @override
  _TaskManagerHomePageState createState() => _TaskManagerHomePageState();
}

class _TaskManagerHomePageState extends State<TaskManagerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('タスク管理'),
      ),
      body: ListView(children: <Widget>[
        ListTile(
            leading: Icon(Icons.check_box_outline_blank), title: Text('タスク1')),
        ListTile(
            leading: Icon(Icons.check_box_outline_blank), title: Text('タスク2')),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // タスク追加の処理をここに書く
        },
        child: Icon(Icons.add),
        tooltip: 'タスクを追加',
      ),
    );
  }
}
