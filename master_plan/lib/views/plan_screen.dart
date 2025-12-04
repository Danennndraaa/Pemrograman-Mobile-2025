import '../models/data_layer.dart';
import 'package:flutter/material.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key});

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  // Langkah 6: Variabel plan
  Plan plan = const Plan();

  // Langkah 10: Scroll Controller
  late ScrollController scrollController;

  // Langkah 11: initState
  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        // Logika untuk menghilangkan fokus keyboard saat scroll
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  // Langkah 13: dispose
  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Ganti dengan nama panggilan Anda
      appBar: AppBar(title: const Text('Master Plan: Danendra Adhipramana')),
      body: _buildList(),
      floatingActionButton: _buildAddTaskButton(),
    );
  }

  // Langkah 7: Tombol Tambah
  Widget _buildAddTaskButton() {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        setState(() {
          plan = Plan(
            name: plan.name,
            tasks: List<Task>.from(plan.tasks)..add(const Task()),
          );
        });
      },
    );
  }

  // Langkah 8 & 12: List Builder dengan Scroll behavior
  Widget _buildList() {
    return ListView.builder(
      controller: scrollController,
      // Langkah 12: Keyboard dismiss behavior
      keyboardDismissBehavior: Theme.of(context).platform == TargetPlatform.iOS
          ? ScrollViewKeyboardDismissBehavior.onDrag
          : ScrollViewKeyboardDismissBehavior.manual,
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) => _buildTaskTile(plan.tasks[index], index),
    );
  }

  // Langkah 9: Task Tile (Checkbox & Text Field)
  Widget _buildTaskTile(Task task, int index) {
    return ListTile(
      leading: Checkbox(
          value: task.complete,
          onChanged: (selected) {
            setState(() {
              plan = Plan(
                name: plan.name,
                tasks: List<Task>.from(plan.tasks)
                  ..[index] = Task(
                    description: task.description,
                    complete: selected ?? false,
                  ),
              );
            });
          }),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          setState(() {
            plan = Plan(
              name: plan.name,
              tasks: List<Task>.from(plan.tasks)
                ..[index] = Task(
                  description: text,
                  complete: task.complete,
                ),
            );
          });
        },
      ),
    );
  }
}