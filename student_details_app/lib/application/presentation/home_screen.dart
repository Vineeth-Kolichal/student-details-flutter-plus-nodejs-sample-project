import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Students'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text('name'),
          subtitle: Text('24'),
        ),
        separatorBuilder: (context, index) => Divider(),
        itemCount: 10,
      ),
    );
  }
}
