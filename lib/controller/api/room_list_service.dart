import 'dart:convert';
import 'dart:developer';

import 'package:cowork_1/database/room_list.dart';
import 'package:cowork_1/model/room_list.dart';



class RoomListService {
  static Future<List<Rooms>?> roomListService() async {
    try {
      log("++++++++++++++++++++++");
      RoomListModel roomListModel =
          RoomListModel.fromJson(jsonDecode(jsonEncode(RoomList.roomList)));
      return roomListModel.rooms;
    } catch (e) {
      log("Start");
      e.toString();
    }
    log("End");
    return [];
  }
}
