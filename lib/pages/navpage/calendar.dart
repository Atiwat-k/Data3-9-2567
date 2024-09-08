import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            FilledButton(
                onPressed: () async {
                  DateTime? newDateTime = await showRoundedDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(DateTime.now().year - 1),
                    lastDate: DateTime(DateTime.now().year + 1),
                    borderRadius: 16,
                  );
                  if (newDateTime != null) {
                    log(newDateTime.toString());
                  } else {
                    log('No Date Selected');
                  }
                },
                child: const Text('Show Thai Calendar'))
          ],
        ),
      ),
    );
  }
}
