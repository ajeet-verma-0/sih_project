import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/state_manager.dart';


import '../models/Announcements/AnnouncementsModel.dart';
import '../resources/AnnouncementsServeces/AnnouncementsServeces.dart';

class AnnouncementsController extends GetxController {
  var announcementsServeces = AnnouncementsServeces();
  var announcementsList = [].obs;

  RxString userIdclassroom = ''.obs;

  Future<String> getUserClassRoom() async {
    userIdclassroom.value = await announcementsServeces.getUserClassroom();
    update();
    return userIdclassroom.value;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    getUserClassRoom();
    super.onInit();
  }
}
