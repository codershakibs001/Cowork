import 'dart:developer';

import 'package:cowork_1/controller/api/room_list_service.dart';
import 'package:cowork_1/model/room_list.dart';
import 'package:get/get.dart';

class RoomListController extends GetxController {
  List<Rooms>? rooms;
  RxBool isLoading = false.obs;

  getRoomList() async {
    isLoading.value = true;
    rooms = await RoomListService.roomListService();
    log("============================================");
    isLoading.value = false;
  }

  @override
  void onInit() {
    getRoomList();
    super.onInit();
  }
}
