import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class AddNew extends StatelessWidget {
  const AddNew({
    Key? key,
    required this.idController,
    required this.nameController,
    required this.todoBox,
  }) : super(key: key);

  final TextEditingController idController;
  final TextEditingController nameController;
  final Box<String> todoBox;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.greenAccent[200]),
        foregroundColor: MaterialStateProperty.all(Colors.black),
      ),
      child: const Text('Add New'),
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) {
            return Dialog(
              child: Container(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: idController,
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    TextField(
                      controller: nameController,
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    OutlinedButton(
                      child: const Text('Submit'),
                      onPressed: () {
                        final key = idController.text;
                        final value = nameController.text;
                        todoBox.put(key, value);

                        Navigator.pop(context);
                      },
                    )
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
