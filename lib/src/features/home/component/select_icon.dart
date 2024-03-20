import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controller/fifa_tpe_controller.dart';

class SelectIcon extends ConsumerStatefulWidget {
  const SelectIcon({
    super.key,
  });
  @override
  ConsumerState<SelectIcon> createState() => _SelectIconState();
}

class _SelectIconState extends ConsumerState<SelectIcon> {
  @override
  Widget build(BuildContext context) {
    final getData = ref.watch(fifaTypeControllerProvider);
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.14,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: getData.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: Colors.grey[200],
                      padding: const EdgeInsets.all(9),
                      elevation: 0),
                  onPressed: () {},
                  child: getData[index].icon),
              Text(
                getData[index].name,
                style: const TextStyle(fontSize: 13),
              )
            ],
          );
        },
      ),
    );
  }
}
