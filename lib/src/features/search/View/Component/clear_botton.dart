import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../home/controller/fifa_tpe_controller.dart';

class ClearBotton extends StatelessWidget {
  const ClearBotton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return TextButton.icon(
          onPressed: () {
            ref.read(fifaTypeControllerProvider.notifier).clearStatus();
          },
          icon: const Icon(
            Icons.block_outlined,
            color: Color.fromARGB(255, 245, 7, 4),
          ),
          label: const Text(
            "ล้าง",
            style: TextStyle(
              color: Color.fromARGB(255, 245, 7, 4),
            ),
          ),
        );
      },
    );
  }
}
