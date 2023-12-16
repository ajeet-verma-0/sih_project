import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../../model/ProfileModels/SProfileInfoModel.dart';
import '../../resources/ProfilesServices/SProfileservices.dart';
import '../../view/SProfile/SProfileScreen.dart';
import '../SubjectController/TMarksController.dart';


class SProfileController extends GetxController {
  var services = SprofileServices();
  var studentInfo = SProfileInfoModel(
          /* fname: 'Jojo',
    lname: 'Jostar',
    phone: '0954850462',
    paretnPhone: '0900000000',
    grade: '2',
    classroom: 'A',
    url: '5dscksn',
    avrg: 80.0,*/
          )
      .obs;
  var stId = ''.obs;
  var studentMarks = [].obs;
  getStudentsInfoForTeacher() async {
    studentInfo.value = await services.getStudentInfo(stId.value.toString());
    studentMarks.value = await services.getStudentMarks(
        studentInfo.value.grade.toString(),
        studentInfo.value.classId.toString(),
        studentInfo.value.uid.toString());
    dropController.selectedValue.value = dropController.subjectNames.value[0];
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Get.delete<TMarksController>();
  }
}
