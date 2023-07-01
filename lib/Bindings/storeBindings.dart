import 'package:get/get.dart';
import 'package:getxtest/Controller/storeController.dart';

class StoreBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoreController());
  }
}
