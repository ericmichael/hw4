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
  List<String> taskTitles = [
    'Understand Code',
    'Figure out duplication',
    'Refactor',
    'Add comments',
    'commit code',
    'push to github',
  ];

  List<bool> taskStates = [
    true,
    false,
    true,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Your Tasks'),
      ),
      body: Container(
        color: Colors.teal,
        // REFACTOR INTO ListView.builder
        child: ListView(children: <Widget>[
          // REFACTOR OUT INTO STATEFUL TASK WIDGETS
          Card(
            child: CheckboxListTile(
              value: taskStates[0],
              onChanged: (newValue) {
                setState(() {
                  taskStates[0] = newValue;
                });
              },
              activeColor: Colors.teal,
              title: Text(taskTitles[0],
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle:
                        taskStates[0] ? FontStyle.italic : FontStyle.normal,
                    color: taskStates[0] ? Colors.grey : Colors.black,
                  )),
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
          Card(
            child: CheckboxListTile(
              value: taskStates[1],
              onChanged: (newValue) {
                setState(() {
                  taskStates[1] = newValue;
                });
              },
              activeColor: Colors.teal,
              title: Text(taskTitles[1],
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle:
                        taskStates[1] ? FontStyle.italic : FontStyle.normal,
                    color: taskStates[1] ? Colors.grey : Colors.black,
                  )),
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
          Card(
            child: CheckboxListTile(
              value: taskStates[2],
              onChanged: (newValue) {
                setState(() {
                  taskStates[2] = newValue;
                });
              },
              activeColor: Colors.teal,
              title: Text(taskTitles[2],
                  style: TextStyle(
                    fontSize: 20,
                    fontStyle:
                        taskStates[2] ? FontStyle.italic : FontStyle.normal,
                    color: taskStates[2] ? Colors.grey : Colors.black,
                  )),
              controlAffinity: ListTileControlAffinity.leading,
            ),
          ),
        ]),
      ),
    );
  }
}
