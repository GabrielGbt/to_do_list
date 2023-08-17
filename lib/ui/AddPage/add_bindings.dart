import 'package:get/get.dart';
import 'package:to_do_list/ui/AddPage/add_controller.dart';

class AddBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddController(), fenix: true);
  }
}
