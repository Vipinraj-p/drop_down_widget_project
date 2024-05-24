import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Drop Down Widge'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: DropdownMenu<int>(
              enabled: true,
              initialSelection: 1,
              leadingIcon: Icon(Icons.numbers),
              label: Text('Numbers'),
              menuHeight: 200,
              dropdownMenuEntries: [
            DropdownMenuEntry<int>(value: 0, label: 'zero'),
            DropdownMenuEntry<int>(value: 1, label: 'one'),
            DropdownMenuEntry<int>(value: 2, label: 'two'),
            DropdownMenuEntry<int>(value: 3, label: 'three'),
            DropdownMenuEntry<int>(value: 4, label: 'four'),
            DropdownMenuEntry<int>(value: 5, label: 'five'),
            DropdownMenuEntry<int>(value: 6, label: 'six'),
            DropdownMenuEntry<int>(value: 7, label: 'seven'),
            DropdownMenuEntry<int>(value: 8, label: 'eight'),
            DropdownMenuEntry<int>(value: 9, label: 'nine'),
          ])),
    );
  }
}
