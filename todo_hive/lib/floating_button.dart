import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:todo_hive/task_model.dart';

class FloatingButtonScreen extends StatelessWidget {
  const FloatingButtonScreen({
    Key? key,
    required this.titleController,
    required this.detailController,
    required this.taskBox,
  }) : super(key: key);

  final TextEditingController titleController;
  final TextEditingController detailController;
  final Box<TaskModel> taskBox;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: const Icon(Icons.add_task),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              backgroundColor: Colors.yellow[200],
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      decoration: const InputDecoration(hintText: 'Title'),
                      controller: titleController,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    TextField(
                      decoration: const InputDecoration(hintText: 'Details'),
                      controller: detailController,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.yellow),
                      ),
                      child: const Text(
                        'Add',
                        style: TextStyle(
                          color: Colors.black45,
                        ),
                      ),
                      onPressed: () {
                        final String title = titleController.text;
                        final String detail = detailController.text;
                        TaskModel task = TaskModel(
                            isCompleted: false, title: title, details: detail);
                        taskBox.add(task);
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
