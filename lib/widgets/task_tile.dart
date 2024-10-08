import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text('item#1'),
      value: false,
      onChanged: (bool? value) {},
    );
  }
}
