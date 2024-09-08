import 'package:flutter/material.dart';

class AppData with ChangeNotifier {
  String uername = '';
  late UserProfile user;
}

class UserProfile {
  int idx = 0;
  String fullname = '';
}
