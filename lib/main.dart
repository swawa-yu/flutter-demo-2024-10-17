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

class TaskManagerHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('タスク管理アプリ'),
      ),
      body: Center(
        child: Text('ここにタスク一覧が表示されます'),
      ),
    );
  }
}
