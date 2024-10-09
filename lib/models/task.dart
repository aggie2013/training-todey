class Task {
  String name;
  bool isDone;

  Task({this.name = 'this is a task', this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
