import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Controller/setIndex_controller.dart';
import '../View/main_screen.dart';

class NavigatorBottomBar {
  NavigatorBottomBar._();

  static final instans = NavigatorBottomBar._();

  final screen = <Widget>[
    const MainScreen(),
    const MainScreen(),
    const MainScreen(),
    const MainScreen()
  ];

  final bottomNavigationBar = Consumer(
    builder: (BuildContext context, WidgetRef ref, Widget? child) {
      final currentIndex = ref.watch(setIndexOfBottomBar);
      final setIndex = ref.read(setIndexOfBottomBar.notifier);
      return BottomNavigationBar(
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
        currentIndex: currentIndex,
        selectedItemColor: const Color.fromARGB(255, 245, 7, 4),
        onTap: (int index) {
          setIndex.update((state) => state = index);
        },
        type: BottomNavigationBarType.fixed,
        unselectedIconTheme: const IconThemeData(color: Colors.blueGrey),
        selectedIconTheme:
            const IconThemeData(color: Color.fromARGB(255, 245, 7, 4)),
      );
    },
  );
}
