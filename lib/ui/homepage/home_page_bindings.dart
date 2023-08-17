import 'package:get/get.dart';

import 'package:to_do_list/ui/homepage/home_page_controller.dart';

class HomePageBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(
      HomePageController(),
    );
  }
}
