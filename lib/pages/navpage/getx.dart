import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetXPage extends StatefulWidget {
  const GetXPage({super.key});

  @override
  State<GetXPage> createState() => _GetXPageState();
}

class _GetXPageState extends State<GetXPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
      ),
      body: Center(
        child: Column(
          children: [
            FilledButton(
                onPressed: () {
                  Get.snackbar('แจ้งเตือน', 'คุณถูกหวยกิน');
                },
                child: const Text('Snack Bar')),
            FilledButton(
                onPressed: () {
                  Get.defaultDialog(
                      title: 'ยินดีด้วย',
                      content: const Column(
                        children: [Text('คุณถูกหวย'), Text('เล่นล้อ!!!')],
                      ),
                      barrierDismissible: false,
                      actions: [
                        TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text('ปิด')),
                        FilledButton(
                            onPressed: () {}, child: const Text('ตกลง')),
                      ]);
                },
                child: const Text('Get Dialog')),
            FilledButton(
                onPressed: () {
                  if (Get.isDarkMode) {
                    Get.changeTheme(ThemeData.light());
                  } else {
                    Get.changeTheme(ThemeData.dark());
                  }
                },
                child: const Text('Theme Change')),
            FilledButton(
                onPressed: () {
                  var width = Get.width;
                  var heigh = Get.height;
                  log('$width X $heigh ');
                  var fontSize = Get.textTheme.bodyMedium!.fontSize;
                  log('Font size: $fontSize');
                },
                child: const Text(
                  'Get Utilities',
                  style: TextStyle(),
                )),
            FilledButton(
                onPressed: () {
                  GetStorage storage = GetStorage();
                  String username = storage.read('username');
                  String password = storage.read('password');
                  log(username);
                  log(password);
                },
                child: Text('Read Storage')),
            FilledButton(
                onPressed: () {
                  GetStorage storage = GetStorage();
                  storage.erase();
                },
                child: Text('Erase Storage'))
          ],
        ),
      ),
    );
  }
}
