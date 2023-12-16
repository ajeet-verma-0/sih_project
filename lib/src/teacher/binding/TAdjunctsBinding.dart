import 'package:get/get.dart';


import '../controllers/RefrencesControllers/TPdfRefrencesController.dart';
import '../controllers/RefrencesControllers/TrefrenceBottomSheetController.dart';
import '../controllers/TasksControllers/bottomSheetController.dart';

class TAdjunctsBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => TRefrencesPdfController());
    Get.lazyPut(() => TreferenceBottomsheetController());
    Get.lazyPut(() => BottomSheetController());
  }
}
