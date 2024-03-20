import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'Component/Navigator_search.dart';
import 'Component/back_botton.dart';
import 'Component/bottom_search.dart';
import 'Component/clear_botton.dart';
import 'Component/radio.dart';
import 'Component/select_date.dart';
import 'Component/select_time.dart';
import 'Component/sports_category.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [BackBotton(), SizedBox(width: 7), NavigetorSearch()],
            ),
            const Text("เลือกวันที่และเวลา"),
            const SelectDate(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.003,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SelectTime(),
                SizedBox(
                  width: 10,
                ),
                SelectTime()
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomRadio(),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("เลือกกีฬา"), ClearBotton()],
            ),
            const SportCategory(),
            const Spacer(flex: 1),
            const Align(alignment: Alignment.center, child: BottomSearch()),
            const Spacer(flex: 2),
          ],
        ),
      ),
    )));
  }
}
