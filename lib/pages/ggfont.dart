import 'package:flutter/material.dart';

class GGFontPage extends StatefulWidget {
  const GGFontPage({super.key});

  @override
  State<GGFontPage> createState() => _GGFontPageState();
}

class _GGFontPageState extends State<GGFontPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Font'),
      ),
      body: const Center(
        child: Text(
          'วันนี้เรียนง่ายจัง',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
