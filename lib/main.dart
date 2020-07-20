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
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: CheckboxListTile(
                  value: task1,
                  onChanged: (newValue) {
                    setState(() {
                      task1 = newValue;
                    });
                  },
                  activeColor: Colors.teal,
                  title:
                      Text('Understand Code', style: TextStyle(fontSize: 20)),
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: CheckboxListTile(
                  value: task2,
                  onChanged: (newValue) {
                    setState(() {
                      task2 = newValue;
                    });
                  },
                  activeColor: Colors.teal,
                  title: Text('Figure out duplication',
                      style: TextStyle(fontSize: 20)),
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: CheckboxListTile(
                  value: task3,
                  onChanged: (newValue) {
                    setState(() {
                      task3 = newValue;
                    });
                  },
                  activeColor: Colors.teal,
                  title: Text('Refactor', style: TextStyle(fontSize: 20)),
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
