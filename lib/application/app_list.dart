import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ui/AddPage/add_module.dart';
import '../ui/homepage/home_page_module.dart';

class AppList extends StatelessWidget {
  const AppList({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        ...HomePageModule().routers,
        ...AddModule().routers,
      ],
    );
  }
}
