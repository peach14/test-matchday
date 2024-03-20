import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../home/controller/fifa_tpe_controller.dart';

class SportCategory extends StatelessWidget {
  const SportCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final data = ref.watch(fifaTypeControllerProvider);
        return SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.45,
            child: GridView.builder(
              itemCount: data.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemBuilder: (context, index) => Column(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: data[index].status == false
                            ? Colors.white
                            : const Color.fromARGB(255, 248, 215, 215),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(7)),
                            side: BorderSide(
                                width: 1.4,
                                color: data[index].status == false
                                    ? Colors.black54
                                    : const Color.fromARGB(255, 245, 7, 4))),
                        minimumSize: const Size(35, 60),
                      ),
                      onPressed: () {
                        ref
                            .read(fifaTypeControllerProvider.notifier)
                            .updateStatus(index);
                      },
                      child: data[index].icon
                      // const Icon(
                      //   Icons.sports_soccer_outlined,
                      //   color: Color.fromARGB(255, 245, 7, 4),
                      //   size: 30,
                      // )
                      ),
                  Text(data[index].name)
                ],
              ),
            ));
      },
    );
  }
}
