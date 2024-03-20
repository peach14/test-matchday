import 'package:flutter/material.dart';

import 'Component/list_stadium.dart';
import 'Component/map_botton.dart';
import 'Component/switch_botton.dart';

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
        padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
        child: const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("พื้นที่ใกล้เคียง", style: TextStyle(fontSize: 17)),
                    Text("พบ 7 สนาม", style: TextStyle(fontSize: 12)),
                  ],
                ),
                SwitchBotton()
              ],
            ),
            ListStaduim()
          ],
        ),
      ),
      floatingActionButton: const MapBotton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: Colors.black87),
      backgroundColor: Colors.white,
      title:
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "ฟุตบอล พื้นที่ใกล้เคียง",
          style: TextStyle(color: Colors.black, fontSize: 14),
        ),
        Text(
          "15/05/2566 เวลา 18.00-19.00",
          style: TextStyle(color: Colors.black87, fontSize: 12),
        ),
      ]),
      actions: [
        IconButton(
            onPressed: () {
              // Navigator.push(
              //     context, SlideRightRoute(page: const SearchPage()));
            },
            icon: const Icon(
              Icons.tune_outlined,
              color: Color.fromARGB(255, 245, 7, 4),
            ))
      ],
    );
  }
}
