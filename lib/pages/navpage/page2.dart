import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:
          Color.fromARGB(255, 0, 0, 0), // Change background color here
      body: Center(
        child: Text('Page2'),
      ),
    );
  }
}
