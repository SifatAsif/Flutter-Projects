import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:todo_hive/task_model.dart';
import 'package:todo_hive/task_screen.dart';
import 'floating_button.dart';
import 'main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

enum TaskFilter { All, Completed, Incomplete }

class _HomePageState extends State<HomePage> {
  late Box<TaskModel> taskBox;

  TaskFilter filter = TaskFilter.All;

  final TextEditingController titleController = TextEditingController();
  final TextEditingController detailController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    taskBox = Hive.box<TaskModel>(boxName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text(
          'To-Do',
          style: TextStyle(color: Colors.black54),
        ),
        actions: <Widget>[
          PopupMenuButton<String>(
            color: Colors.yellow[200],
            icon: const Icon(
              Icons.filter_list_rounded,
              color: Colors.black54,
            ),
            iconSize: 35.0,
            onSelected: (value) {
              if (value.compareTo("All") == 0) {
                setState(() {
                  filter = TaskFilter.All;
                });
              } else if (value.compareTo('Completed') == 0) {
                setState(() {
                  filter = TaskFilter.Completed;
                });
              } else {
                setState(() {
                  filter = TaskFilter.Incomplete;
                });
              }
            },
            itemBuilder: (BuildContext context) {
              return ['All', 'Completed', 'Incomplete'].map((option) {
                return PopupMenuItem(
                  value: option,
                  child: Text(
                    option,
                    style: const TextStyle(color: Colors.black54),
                  ),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 30.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.black12,
                  radius: 30.0,
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.yellow,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Set smaller goals like just for',
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  'Tomorrow',
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 50.0,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: const BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: TaskScreen(taskBox: taskBox, filter: filter),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingButtonScreen(
          titleController: titleController,
          detailController: detailController,
          taskBox: taskBox),
    );
  }
}
