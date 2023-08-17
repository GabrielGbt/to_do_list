import 'package:get/get_navigation/src/routes/get_route.dart';

import 'package:to_do_list/application/modules/module.dart';

import 'package:to_do_list/ui/homepage/home_page.dart';

import 'package:to_do_list/ui/homepage/home_page_bindings.dart';

class HomePageModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/',
      page: () => const HomePage(),
      binding: HomePageBindings(),
    ),
  ];
}
