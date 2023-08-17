import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:to_do_list/application/app_list.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const AppList());
}
