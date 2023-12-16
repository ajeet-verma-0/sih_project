

import 'package:get/get.dart';

import '../resources/chat/chat_api.dart';

class SearchControllers extends GetxController {
 bool searchStatus = true;
 var searchResult = [].obs;
  
   loadSearchByName(String name) async {
    searchStatus=false;
    searchResult.value = await FirebaseApi.LoadNameFromApi(name);
    print(searchResult.value);

    searchStatus=true;
  }

}