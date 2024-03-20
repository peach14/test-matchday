import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../component/head.dart';
import '../component/search.dart';
import '../component/search_friend.dart';
import '../component/select_card.dart';
import '../component/select_icon.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Head(),
        Positioned.fill(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                expandedHeight: 230,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  centerTitle: true,
                  titlePadding: const EdgeInsets.symmetric(horizontal: 0),
                  title: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      double height = constraints.biggest.height;

                      return height == 56.0
                          ? Container(
                              color: Colors.white,
                              constraints: const BoxConstraints(minHeight: 20),
                              height: 20,
                            )
                          : const Search();
                    },
                  ),
                ),
                // Spacer()
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                      childCount: 1, (context, index) => buildItemAll())),
            ],
          ),
        )
      ],
    );
  }

  Container buildItemAll() {
    return Container(
      padding: const EdgeInsets.only(top: 10, bottom: 90),
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SelectIcon(),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: const Text("สนามกีฬาที่ใกล้คุณ")),
          const SelectCard(),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: const Text("หาเพื่อนเล่น")),
          const Align(alignment: Alignment.center, child: SearchFriend()),
        ],
      ),
    );
  }
}
