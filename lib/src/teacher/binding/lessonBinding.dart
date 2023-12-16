import 'package:get/get.dart';

import '../../student/controllers/lessonsController.dart';


class TlessonBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => lessonsController());
  }
}
