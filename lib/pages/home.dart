//import 'dart:math';

import 'package:fluter_utilities/config/shared/app_data.dart';
import 'package:fluter_utilities/pages/ggfont.dart';
import 'package:fluter_utilities/pages/main_drawer.dart';
import 'package:fluter_utilities/pages/navpage/calendar.dart';
import 'package:fluter_utilities/pages/navpage/getx.dart';
import 'package:fluter_utilities/pages/navpage/provider.dart';
import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GetStorage gs = GetStorage();
  @override
  void initState() {
    super.initState();
    // import 'package:flutter/scheduler.dart';
    // try {
    //   String username = gs.read('username');
    //   log(username as num);
    //   SchedulerBinding.instance.addPersistentFrameCallback((_) {
    //     Get.to(() => GetXPage());
    //   });
    // } catch (err) {}
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FilledButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainDrawerPage(),
                        ));
                  },
                  child: const Text('Drawer')),
              FilledButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "This is Center Short Toast",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                  child: const Text('Toast')),
              FilledButton(
                  onPressed: () {
                    Get.to(() => const GetXPage());
                  },
                  child: const Text('Get')),
              FilledButton(
                  onPressed: () {
                    GetStorage gs = GetStorage();
                    gs.write('username', 'Admin หัวขวด');
                    gs.write('password', '1234');
                    Get.to(() => const GetXPage());
                  },
                  child: const Text('Demo GetX')),
              FilledButton(
                  onPressed: () {
                    Get.to(() => const GGFontPage());
                  },
                  child: const Text('Google Font')),
              FilledButton(
                  onPressed: () {
                    context.read()<AppData>().username = 'Admin';
                    UserProfile user = UserProfile();
                    user.idx = 1234;
                    user.fullname = 'Je';
                    context.read()<AppData>().user = user;
                    Get.to(() => const ProviderPage());
                  },
                  child: const Text('Provider')),
              FilledButton(
                  onPressed: () {
                    Get.to(() => const CalendarPage());
                  },
                  child: const Text('Calendar'))
            ],
          ),
        ),
      ),
    );
  }
}
