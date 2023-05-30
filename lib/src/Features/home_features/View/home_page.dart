import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matchday/src/Features/home_features/View/Components/head.dart';
import 'package:matchday/src/Features/home_features/View/Components/search.dart';
import 'package:matchday/src/Features/home_features/View/Components/search_friend.dart';
import 'package:matchday/src/Features/home_features/View/Components/select_card.dart';
import 'package:matchday/src/Features/home_features/View/Components/select_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  void onItemTapped(int index){
    setState(() {
      currentIndex =index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        // alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
            color: Colors.grey,
          ),
            head(),
            build_body(context)
        ],
      ),
      bottomNavigationBar: Consumer(
        builder: (BuildContext context, WidgetRef ref, Widget? child) {
          return  BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'หน้าแรก',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.view_compact),
                label: 'กิจกรรม',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.business,
                ),
                label: 'ตารางของคุณ',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.store_mall_directory_outlined,
                ),
                label: 'ตลาด',
              ),
            ],
             currentIndex:  currentIndex ,
             selectedItemColor:  Color.fromARGB(255, 245, 7, 4),
             onTap: onItemTapped,
            type: BottomNavigationBarType.fixed,
            unselectedIconTheme: const IconThemeData(color: Colors.blueGrey),
            selectedIconTheme: const IconThemeData(color: Color.fromARGB(255, 245, 7, 4)),
          );
        },
      )
    ));
  }

  SingleChildScrollView build_body(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          build_selectAll(context),
          Search(),
        ],
      ),
    );
  }
  Container build_selectAll(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 154),
      color: Colors.white,
      child: Positioned(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.045
                ),
                child: SelectIcon()),
            Container(
                margin: EdgeInsets.only(
                    left:MediaQuery.of(context).size.width * 0.05,
                    top: MediaQuery.of(context).size.height * 0.015,
                  bottom:MediaQuery.of(context).size.height * 0.007,
                ),
                child: const Text("สนามกีฬาที่ใกล้คุณ")),
            SelectCard(),
            Container(
                margin: EdgeInsets.only(
                  left:MediaQuery.of(context).size.width * 0.05,
                  top: MediaQuery.of(context).size.height * 0.015,
                  bottom:MediaQuery.of(context).size.height * 0.007,
                ),
                child: const Text("หาเพื่อนเล่น")),
            Container(
                margin: EdgeInsets.only(
                  left:MediaQuery.of(context).size.width * 0.05,
                ),
                child: SearchFriend() ),
            const SizedBox(
              height: 3,
            ),

          ],
        ),
      ),
    );
  }


}




