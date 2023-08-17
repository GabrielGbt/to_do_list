import 'package:get/get_navigation/src/routes/get_route.dart';

import 'package:to_do_list/application/modules/module.dart';

import 'package:to_do_list/ui/AddPage/Add_Page.dart';
import 'package:to_do_list/ui/AddPage/add_bindings.dart';

class AddModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(
      name: '/addp',
      page: () => const AddPage(),
      binding: AddBindings(),
    )
  ];
}
