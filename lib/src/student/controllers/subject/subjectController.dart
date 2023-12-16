import 'package:get/get.dart';

import '../../../public/config/user_information.dart';
import '../../resources/subject/subject_api.dart';

class SubjectController extends GetxController {
  var subjectServices = SubjectServices();
  var subjectList = [].obs;
  getSujects() async {
    subjectList.value = await subjectServices.getUserSubjects();
    UserInformation.Subjects = subjectList.value;
  }
}
