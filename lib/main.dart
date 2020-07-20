import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool task1 = false;
  bool task2 = false;
  bool task3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Your Tasks'),
      ),
      body: Container(
        color: Colors.teal,
        child: ListView(children: <Widget>[
          Task(
            title: 'Understand Code',
          ),
          Task(
            title: 'Figure out duplication',
          ),
          Task(
            title: 'Refactor',
          ),
        ]),
      ),
    );
  }
}

class Task extends StatefulWidget {
  String title;
  Task({this.title});

  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: CheckboxListTile(
          value: checked,
          onChanged: (newValue) {
            setState(() {
              checked = newValue;
            });
          },
          activeColor: Colors.teal,
          title: Text(super.widget.title, style: TextStyle(fontSize: 20)),
          controlAffinity: ListTileControlAffinity.leading,
        ),
      ),
    );
  }
}
