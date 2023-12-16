import 'package:get/state_manager.dart';

import '../../model/subject/TMarksModel.dart';
import '../../resources/TsubjectsServices/TMarksServices.dart';

class TMarksController extends GetxController {
  var service = TMarksServices();
  var studentsMarks = <TMarksStudentModel>[].obs;

  var subjectId = ''.obs;
  var grade = ''.obs;
  var classid = ''.obs;

  getMarksForstudentsInSubject() async {
    print('000000000000');
    print(subjectId);
    print(grade);
    print(classid);
    studentsMarks.value = await service.getAllMarks(subjectId.value.toString(),
        grade.value.toString(), classid.value.toString());
  }
}
