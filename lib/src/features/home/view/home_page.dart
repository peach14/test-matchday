import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Controller/setIndex_controller.dart';
import '../component/navigator_buttombar.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    final currentIndex = ref.watch(setIndexOfBottomBar);
    return SafeArea(
        child: Scaffold(
            body: NavigatorBottomBar.instans.screen[currentIndex],
            bottomNavigationBar:
                NavigatorBottomBar.instans.bottomNavigationBar));
  }
}
