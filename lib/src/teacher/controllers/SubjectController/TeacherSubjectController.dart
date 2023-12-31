import 'package:get/get.dart';

import '../../resources/TsubjectsServices/TsubjectsServices.dart';



class TeacherSubjectController extends GetxController {
  var grade = ''.obs;
  var classId = ''.obs;
  var subjectServices = TSubjetcsServices();

  var teacherSubjectsList = [
    /* TeacherSubjectModel(
      subjectName: 'Math',
      subjectId: '',
    ),
    TeacherSubjectModel(
      subjectName: 'Art',
      subjectId: '',
    ),
    TeacherSubjectModel(
      subjectName: 'Music',
      subjectId: '',
    ),*/
  ].obs;

  getTeacherSubject() async {
    teacherSubjectsList.value = await subjectServices.getTeacherSubjectForClass(
        grade.value.toString(), classId.toString());
  }
}
