import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../student/models/Subjects/SubjectsModel.dart';
import '../../model/subject/LessonsResponseModels.dart';
import '../../resources/TsubjectsServices/TlessonsServices.dart';


class TLessonsController extends GetxController {
  var lessonService = TLessonsServices();
  var subjectID = ''.obs;
  var lessonslist = [].obs;

  var numberOflessons = 0.obs;
  var numberOfTakenLessons = 0.obs;
  var addlessoncontroller = TextEditingController().obs;

  getLessonnForSubject() async {
    print(subjectID.value);
    LessonsResponseModel item =
        await lessonService.getLessons(subjectID.value.toString());
    lessonslist.value = item.lessons;
    numberOflessons.value = item.numberOflesson;
    numberOfTakenLessons.value = item.numberOfTakenLessons;
    print(lessonslist.value);
    print(numberOflessons.value);
    print(numberOfTakenLessons.value);
  }

  addlesson() async {
    await lessonService.addNewLesson(lessonModel(
      title: addlessoncontroller.value.text.toString(),
      checked: false,
      subjectid: subjectID.value.toString(),
    ));
  }

  updateCheckBox(int index) {
    lessonslist.value[index - 1].checked =
        !lessonslist.value[index - 1].checked;
    print('checked');
    update();
  }
}
