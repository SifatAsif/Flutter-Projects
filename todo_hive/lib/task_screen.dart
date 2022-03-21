import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo_hive/task_model.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({
    Key? key,
    required this.taskBox,
    required this.filter,
  }) : super(key: key);

  final Box<TaskModel> taskBox;
  final TaskFilter filter;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: taskBox.listenable(),
      builder: (context, Box<TaskModel> tasks, _) {
        List<int> keys;
        if (filter == TaskFilter.All) {
          keys = tasks.keys.cast<int>().toList();
        } else if (filter == TaskFilter.Completed) {
          keys = tasks.keys
              .cast<int>()
              .where((key) => tasks.get(key)!.isCompleted)
              .toList();
        } else {
          keys = tasks.keys
              .cast<int>()
              .where((key) => !tasks.get(key)!.isCompleted)
              .toList();
        }

        return ListView.separated(
          itemBuilder: (_, index) {
            final int key = keys[index];
            final TaskModel task = tasks.get(key)!;
            return ListTile(
              title: Text(
                task.title,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.black54,
                ),
              ),
              subtitle: Text(
                task.details,
                style: const TextStyle(fontSize: 16),
              ),
              leading: const Icon(
                Icons.alarm,
                color: Colors.yellow,
              ),
              trailing: task.isCompleted
                  ? const Icon(
                      Icons.assignment_turned_in_rounded,
                      color: Colors.yellow,
                    )
                  : const Icon(
                      Icons.assignment_turned_in_rounded,
                    ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      backgroundColor: Colors.yellow[200],
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            OutlinedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.yellow),
                              ),
                              child: Text(
                                task.isCompleted
                                    ? 'Mark as Incomplete'
                                    : 'Mark as Completed',
                                style: const TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                              onPressed: () {
                                final TaskModel mTask = TaskModel(
                                    title: task.title,
                                    details: task.details,
                                    isCompleted:
                                        task.isCompleted ? false : true);
                                taskBox.put(key, mTask);
                                Navigator.pop(context);
                              },
                            ),
                            OutlinedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.yellow),
                              ),
                              child: const Text(
                                'Delete',
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              ),
                              onPressed: () {
                                taskBox.delete(key);
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
          },
          separatorBuilder: (_, index) => const Divider(),
          itemCount: keys.length,
          shrinkWrap: true,
        );
      },
    );
  }
}
