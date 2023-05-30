import 'package:flutter/material.dart';
import 'package:matchday/src/Features/ListStadium_features/View/Component/list_stadium.dart';
import 'package:matchday/src/Features/ListStadium_features/View/Component/map_botton.dart';
import 'package:matchday/src/Features/ListStadium_features/View/Component/switch_botton.dart';
import 'package:matchday/src/Features/search_features/View/search_page.dart';
import 'package:matchday/src/Shared_Components/Widget/animation_next_page.dart';

class ShowResearch extends StatefulWidget {
  const ShowResearch({Key? key}) : super(key: key);

  @override
  State<ShowResearch> createState() => _ShowResearchState();
}

class _ShowResearchState extends State<ShowResearch> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: buildAppBar(context),
          body: Container(
            padding: const EdgeInsets.only(top: 15.0,left: 15.0,right: 15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                      Text("พื้นที่ใกล้เคียง",style: TextStyle(fontSize: 17)),
                      Text("พบ 7 สนาม",style: TextStyle(fontSize: 12)),
                    ],),
                    const SwitchBotton()
                  ],
                ),
                const ListStaduim()
              ],
            ),
          ),
          floatingActionButton: const MapBotton(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        ));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
          iconTheme: IconThemeData(color: Colors.black87),
          backgroundColor: Colors.white,
          title:
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("ฟุตบอล พื้นที่ใกล้เคียง",style: TextStyle(color: Colors.black,fontSize: 14),),
                Text("15/05/2566 เวลา 18.00-19.00",style: TextStyle(color: Colors.black87,fontSize: 12),),
              ]) ,
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, SlideRightRoute(page: SearchPage()));
            }, icon: Icon(Icons.tune_outlined,color: Color
                .fromARGB(
                255,
                245,
                7,
                4),))
          ],
        );
  }
}



