import 'package:get/get.dart';

import '../../student/view/Chat/chats_page.dart';
import '../Teacher_global_info/Subjects_of_teacher/TeacherSubjects.dart';
import '../resources/TClassesService/TClassesServices.dart';
import '../resources/TsubjectsServices/TsubjectsServices.dart';
import '../resources/program/Programapi.dart';
import '../view/Adjuncts/TeacherAdjuncts.dart';
import '../view/Home/teacher_home.dart';
import '../view/tasks/index.dart';
import 'SubjectController/TeacherSubjectController.dart';

class TeacherHomeController extends GetxController {
  var classesServices = TClassesServices();
  var classesList = [
    /*ClassRoomModel(section: 'A', grade: '8', numberOfstudents: 35),
    ClassRoomModel(section: 'B', grade: '4', numberOfstudents: 20),
    ClassRoomModel(section: 'Q', grade: '2', numberOfstudents: 18),*/
  ].obs;

  getTeacherClasses() async {
    classesList.value = await classesServices.getTeacherClasses();
  }

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    Get.delete<TeacherSubjectController>();

    TeacherSubjects.subjectsList =
        await TSubjetcsServices.getAllTeacherSubject();
        getPrograms();
  }

var myprograms = [].obs;
  getPrograms() async {
    print('getting programs ...');
    myprograms.value = await ProgramApiT.getNewPrograms();
    print(myprograms.value);
    print('Done!');
    update();
  }

  var currentIndex = 0.obs;
  var bottomNavgationBarPages = [
    HomeTeacher(),
    TeacherTasksPage(),
    TeacherAdjuncts(),
    ChatsPage(),
  ].obs;

  var appBarTitles = ['Home', 'Tasks', 'Adjuncts', 'Chat'].obs;

  changePages(int index) {
    currentIndex.value = index;
    update();
  }

  // final zoomDrawerController = ZoomDrawerController();

}
