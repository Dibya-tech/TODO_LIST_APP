import 'package:flutter/material.dart';
import 'package:todo/util/mybutton.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onCreate;
  VoidCallback onDiscard;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onCreate,
      required this.onDiscard});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      //TODO: Change bg color
      backgroundColor: Colors.white,
      content: SizedBox(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          // Fetching User input
          TextField(
            controller: controller,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'Add New Task'),
          ),
          // Buttons to save or  discard
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(buttonText: 'Create', onPressed: onCreate),
              const SizedBox(
                width: 8,
              ),
              MyButton(buttonText: 'Discard', onPressed: onDiscard),
            ],
          )
        ]),
      ),
    );
  }
}
