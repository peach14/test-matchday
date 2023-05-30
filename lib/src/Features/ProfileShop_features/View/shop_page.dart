import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matchday/src/Features/ProfileShop_features/View/Component/button_Grop_SelectTime.dart';
import 'package:matchday/src/Features/ProfileShop_features/View/Component/button_show_time.dart';
import 'package:matchday/src/Features/ProfileShop_features/View/Component/comment.dart';
import 'package:matchday/src/Features/ProfileShop_features/View/Component/facilities.dart';
import 'package:matchday/src/Features/ProfileShop_features/View/Component/map_button.dart';
import 'package:matchday/src/Features/ProfileShop_features/View/Component/reserve_the_field.dart';
import 'package:matchday/src/Features/ProfileShop_features/View/Component/slid_image.dart';
import 'package:matchday/src/Features/home_features/Controller/home_controller.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);
  @override
  State<ShopPage> createState() => _ShopPageState();
}
class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SlidImage(),
            Padding(
              padding: const EdgeInsets.only(top: 15.0,left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // padding: const EdgeInsets.only(),
                    child: Row(
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Consumer(
                                builder: (BuildContext context, WidgetRef ref, Widget? child)
                                 =>  Text(ref.watch(nameStadium),
                                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,
                                      fontFamily: 'cabin'
                                  ),
                                ),
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
                                    margin: const EdgeInsets.only(right: 5, left: 5),
                                    width: MediaQuery.of(context).size.width * 0.01,
                                    height: MediaQuery.of(context).size.height * 0.0099,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                        color: Colors.black, shape: BoxShape.circle),
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
                                  Container(
                                    width: 180,
                                    child: const Text(
                                      "คลองหลวง, ปทุมธานี",
                                      style: TextStyle(),
                                      // overflow:
                                      // TextOverflow.ellipsis
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height *0.02,),
                  const Divider(height: 3, color: Colors.black54),
                  SizedBox(height: MediaQuery.of(context).size.height *0.01,),
                  Consumer(
                    builder: (BuildContext context, WidgetRef ref, Widget? child)
                    => Row(
                      children:  [
                     //   ref.watch(Iconsport as ProviderListenable<Widget>),
                        Icon(
                          Icons.sports_soccer_outlined,
                          size: 23,
                          color: Color.fromARGB(255, 245, 7, 4),
                        ),
                        Text(
                          ref.watch(sport),
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          child: const Text("ในร่ม สนามย่อย (${4})",
                              style: TextStyle(fontSize: 12))),
                      Row(
                        children: const [
                          Icon(
                            Icons.access_time,
                            size: 14,
                            color: Color.fromARGB(255, 245, 7, 4),
                          ),
                          Text("ทุกวัน: 8:00-00:00", style: TextStyle(fontSize: 12)),
                        ],
                      ),

                    ],
                  ),),


                  SizedBox(height: MediaQuery.of(context).size.height *0.025,),
                  const Text("สิ่งอำนวยความสะดวก"),
                  SizedBox(height: MediaQuery.of(context).size.height *0.01,),
                  const Facilities(),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height *0.03,),
                         Consumer(
                             builder: (BuildContext context, WidgetRef ref, Widget? child)
                         => Text(ref.watch(nameStadium))),
                        Container(
                          child: Text(
                            "คลองหลวง, ปทุมธานี (ห่างจากคุณ 489.8 กม.)",
                            style: TextStyle(color: Colors.grey[600]),
                            // overflow:
                            // TextOverflow.ellipsis
                          ),
                        ),

                        SizedBox(height: MediaQuery.of(context).size.height *0.01,),
                        const MapButton(),
                        const Divider(height: 3, color: Colors.black54),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Container(
                              child: Text("เลือกสนามที่ต้องการ",
                                  style: TextStyle(
                                      color: Colors.grey[650],
                                      fontSize: 17,
                                      fontWeight: FontWeight.w100))),
                          const ButtonShowTime()
                        ],),
                        const ButtonGropSelectTime(),
                        const ReserveTheField(),
                        const Divider(height: 3, color: Colors.black54),
                        SizedBox(height: MediaQuery.of(context).size.height *0.04),
                        const Comment(),
                        SizedBox(height: MediaQuery.of(context).size.height *0.04,)
                      ],),
                  )
                ],),
            ),
          ],
        ),
      ),
    ));
  }
}




