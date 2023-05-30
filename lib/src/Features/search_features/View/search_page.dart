import 'package:flutter/material.dart';
import 'package:matchday/src/Features/search_features/View/Component/Navigator_search.dart';
import 'package:matchday/src/Features/search_features/View/Component/back_botton.dart';
import 'package:matchday/src/Features/search_features/View/Component/bottom_search.dart';
import 'package:matchday/src/Features/search_features/View/Component/clear_botton.dart';
import 'package:matchday/src/Features/search_features/View/Component/radio.dart';
import 'package:matchday/src/Features/search_features/View/Component/select_date.dart';
import 'package:matchday/src/Features/search_features/View/Component/select_time.dart';
import 'package:matchday/src/Features/search_features/View/Component/sports_category.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0,right: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                BackBotton(),
                SizedBox(width: 7),
                NavigetorSearch()
              ],
            ),
            const Text("เลือกวันที่และเวลา"),
            const SelectDate(),
            SizedBox(height: MediaQuery.of(context).size.height *0.003,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SelectTime(),
                SizedBox(width: 10,),
                SelectTime()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                CustomRadio(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("เลือกกีฬา"),
                ClearBotton()
              ],
            ),
               const SportCategory(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                BottomSearch(),
              ],
            )
          ],
        ),
      ),
    ));
  }

}







