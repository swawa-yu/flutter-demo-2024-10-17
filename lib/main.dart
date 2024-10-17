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
  List<String> _tasks = [];

  void _displayAddTaskDialog(BuildContext context) {
    TextEditingController taskController = TextEditingController();
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('新しいタスクを追加'),
            content: TextField(
              controller: taskController,
              decoration: InputDecoration(hintText: 'タスク名を入力'),
            ),
            actions: <Widget>[
              TextButton(
                child: Text('キャンセル'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Text('追加'),
                onPressed: () {
                  setState(() {
                    _tasks.add(taskController.text);
                  });
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('タスク管理'),
      ),
      body: ListView.builder(
        itemCount: _tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.check_box_outline_blank),
            title: Text(_tasks[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _displayAddTaskDialog(context);
        },
        child: Icon(Icons.add),
        tooltip: 'タスクを追加',
      ),
    );
  }
}
