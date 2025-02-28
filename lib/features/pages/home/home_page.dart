import 'package:cached_network_image/cached_network_image.dart';
import 'package:cowork_1/common/my_custom_text.dart';
import 'package:cowork_1/controller/getx/ui/roomList/room_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RoomListController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Obx(() => controller.isLoading.isTrue
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Expanded(
                  child: ListView.builder(
                      itemCount: controller.rooms?.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: ScrollPhysics(),
                      itemBuilder: (context, index) {
                        var data = controller.rooms?[index];
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            color: Colors.green,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(tName: "${data?.comment}"),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: CachedNetworkImage(
                                    height: 170,
                                    width: 100,
                                    fit: BoxFit.fitHeight,
                                    imageUrl: "${data?.image}",
                                    placeholder: (context, url) =>
                                        CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        Icon(Icons.broken_image),
                                  ),
                                ),
                                CustomText(tName: "${data?.name}"),
                                CustomText(tName: "${data?.subName}"),
                                CustomText(tName: "${data?.price}\$"),
                              ],
                            ),
                          ),
                        );
                      })))
        ],
      ),
    );
  }
}
