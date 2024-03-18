import 'package:get/get.dart';
import 'package:latihanresponsf/pages/home/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
