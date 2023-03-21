import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext) deleteFunction;
  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const BehindMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              backgroundColor: const Color.fromARGB(255, 229, 229, 172),
              //Colors.red,
              icon: Icons.delete,
            ),
            const SlidableAction(
              // TODO: Edit todo functionality
              onPressed: null,
              backgroundColor: Color.fromARGB(255, 229, 229, 172),
              //Colors.red,
              icon: Icons.edit,
            )
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
              //TODO: Change box color to create a box with round edges and bevels
              color: const Color.fromARGB(255, 165, 165, 132),
              borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              // Checkboxes
              Checkbox(value: taskCompleted, onChanged: onChanged),
              // Items
              Text(
                taskName,
                style: TextStyle(
                    decoration: taskCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
