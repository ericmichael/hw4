# hw4

For this homework you will need to refactor some code.

The app is a simple task list. However, the task widgets have been copied and pasted :( with small modifications to each.


<img src="https://github.com/ericmichael/hw4/blob/master/screenshots/initial_app.png" width="40%">

**initial screenshot of app with 3 hardcoded tasks**

You first will need to refactor out the task widget into a class. This class should take in the title and the initial state (checked/unchecked) of the task. 

```dart

Task(
    title: 'clean room',
    checked: false,
)

```


After refactoring the Task Widget replace the [ListView](https://api.flutter.dev/flutter/widgets/ListView-class.html) to use [ListView.builder()](https://flutter.dev/docs/cookbook/lists/long-lists) to dynamically make tasks.

Two arrays have been provided **taskTitles** and **taskStates** they  hold the title and inital state of each task.
You will need to used this arrays in the [ListView.builder()](https://flutter.dev/docs/cookbook/lists/long-lists) to generate the tasks.

```dart

Task(
    title: taskTitles[index],
    checked: tasksState[index],
)

```


<img src="https://github.com/ericmichael/hw4/blob/master/screenshots/final_result.png" width="40%">

**end result with app using listview.builder to generate all the task in the array**

# Hint:

When dealing with Stateful Widgets, let's say you have a Stateful Widget called Task and you pass information to it via the constructor.

To access variables in the Task class, use `widget.whatever` in the _TaskState class. 

```dart
class Task extends StatefulWidget {
  String whatever;

  Task(this.whatever);
  
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.whatever);
  }
}


```

