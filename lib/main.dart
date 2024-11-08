import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:todo2/components/add_task_bottom_sheet.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('tasks');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  void showMyBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: false,
      builder: (BuildContext context) {
        return const TaskBottomSheet();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Your Task")),
      body: const Text("Test Data"),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          showMyBottomSheet(context);
        },
        label: const Text('Add'),
        // Corrected the label with a valid Text widget
        icon: const Icon(Icons.add), // Replaced child with icon
      ),
    );
  }
}
