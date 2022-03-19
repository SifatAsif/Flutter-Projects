import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_practice/update.dart';

import 'add_new.dart';
import 'delete.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Box<String> todoBox;
  final TextEditingController idController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    todoBox = Hive.box<String>('todo');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hive Practice'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: todoBox.listenable(),
              builder:
                  (BuildContext context, Box<String> todos, Widget? child) {
                return ListView.separated(
                  itemBuilder: (context, index) {
                    final keys = todos.keys.toList()[index];
                    final values = todos.get(keys);

                    return ListTile(
                      title: Text(values!,
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      subtitle: Text(keys!,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    );
                  },
                  separatorBuilder: (child, index) => const Divider(),
                  itemCount: todos.keys.toList().length,
                );
              },
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AddNew(
                  idController: idController,
                  nameController: nameController,
                  todoBox: todoBox),
              Update(
                  idController: idController,
                  nameController: nameController,
                  todoBox: todoBox),
              Delete(idController: idController, todoBox: todoBox),
            ],
          ),
        ],
      ),
    );
  }
}
