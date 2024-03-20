import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../home/controller/staduim_controller.dart';
import 'Component/button_Grop_SelectTime.dart';
import 'Component/button_show_time.dart';
import 'Component/comment.dart';
import 'Component/facilities.dart';
import 'Component/map_button.dart';
import 'Component/reserve_the_field.dart';
import 'Component/slid_image.dart';

class ShopPage extends ConsumerStatefulWidget {
  const ShopPage({Key? key}) : super(key: key);
  @override
  ConsumerState<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends ConsumerState<ShopPage> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(staDuaimProviders);
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SlidImage(),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data.staduim,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'cabin'),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 5),
                                child: const Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Color.fromARGB(255, 245, 7, 4),
                                ),
                              ),
                              const Text("0.0"),
                              Container(
                                margin:
                                    const EdgeInsets.only(right: 5, left: 5),
                                width: MediaQuery.of(context).size.width * 0.01,
                                height:
                                    MediaQuery.of(context).size.height * 0.0099,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle),
                                //padding: const EdgeInsets.all(2.0),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 5),
                                child: const Icon(
                                  Icons.location_on_outlined,
                                  size: 20,
                                  color: Color.fromARGB(255, 245, 7, 4),
                                ),
                              ),
                              const SizedBox(
                                width: 180,
                                child: Text(
                                  "คลองหลวง, ปทุมธานี",
                                  style: TextStyle(),
                                  // overflow:
                                  // TextOverflow.ellipsis
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  const Divider(height: 3, color: Colors.black54),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  Consumer(
                    builder:
                        (BuildContext context, WidgetRef ref, Widget? child) =>
                            Row(
                      children: [
                        const Icon(
                          Icons.sports_soccer_outlined,
                          size: 23,
                          color: Color.fromARGB(255, 245, 7, 4),
                        ),
                        Text(
                          data.name,
                          style: const TextStyle(
                              fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 25),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("ในร่ม สนามย่อย (${4})",
                            style: TextStyle(fontSize: 12)),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              size: 14,
                              color: Color.fromARGB(255, 245, 7, 4),
                            ),
                            Text("ทุกวัน: 8:00-00:00",
                                style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.025,
                  ),
                  const Text("สิ่งอำนวยความสะดวก"),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  const Facilities(),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Consumer(
                            builder: (BuildContext context, WidgetRef ref,
                                    Widget? child) =>
                                Text(data.staduim)),
                        Text(
                          "คลองหลวง, ปทุมธานี (ห่างจากคุณ 489.8 กม.)",
                          style: TextStyle(color: Colors.grey[600]),
                          // overflow:
                          // TextOverflow.ellipsis
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        const MapButton(),
                        const Divider(height: 3, color: Colors.black54),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("เลือกสนามที่ต้องการ",
                                style: TextStyle(
                                    color: Colors.grey[650],
                                    fontSize: 17,
                                    fontWeight: FontWeight.w100)),
                            const ButtonShowTime()
                          ],
                        ),
                        const ButtonGroupSelectTime(),
                        const ReserveTheField(),
                        const Divider(height: 3, color: Colors.black54),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04),
                        const Comment(),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
