import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../controller/list_staduim_controller.dart';
import '../controller/staduim_controller.dart';
import '../models/staduim_model.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    const textColor = Colors.white;

    const buttonColor = Color.fromARGB(255, 245, 7, 4);

    const borderSide = BorderSide(color: Colors.deepOrange, width: 1);

    final buttonShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
      side: borderSide,
    );
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final data = ref.watch(listStaDuaimProvider);

        return SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.27,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Stack(
                    children: [
                      Consumer(
                        builder: (BuildContext context, WidgetRef ref,
                                Widget? child) =>
                            GestureDetector(
                          onTap: () {
                            ref
                                .read(staDuaimProviders.notifier)
                                .loadData(staduaim: data[index]);

                            context.go('/ShopPage');
                          },
                          child: Card(
                            margin: const EdgeInsets.only(left: 20, right: 12),
                            child: SizedBox(
                              width: 289,
                              height: 155,
                              child: Column(children: [
                                Container(
                                    height: 85,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(
                                              data[index].fifaTypePart)),
                                    )),
                                groupLocation(index, buttonColor, buttonShape,
                                    child, textColor, data)
                              ]),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 200),
                        //width: 90,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                minimumSize: const Size(70, 25),
                                backgroundColor: Colors.grey[200],
                                elevation: 0),
                            onPressed: () {},
                            child: Row(
                              children: [
                                data[index].icon,
                                Text(
                                  data[index].name,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      color: Color.fromARGB(255, 245, 7, 4)),
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }

  Container groupLocation(
      int index,
      Color buttonColor,
      RoundedRectangleBorder buttonShape,
      Widget? child,
      Color textColor,
      List<Staduaim> data) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                  // margin:
                  //     const EdgeInsets.only(right: 5),
                  width: 50,
                  height: 45,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(data[index].logo)),
                  )),
              SizedBox(
                width: 130,
                child: Column(
                  // crossAxisAlignment:
                  //     CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(data[index].staduim),
                        const Icon(
                          Icons.star,
                          size: 12,
                          color: Color.fromARGB(255, 245, 7, 4),
                        ),
                        const Text("0"),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 12,
                          color: Color.fromARGB(255, 245, 7, 4),
                        ),
                        Flexible(
                            child: Text("489.3 กม-คลองหลวง dsd",
                                style: TextStyle(fontSize: 12),
                                overflow: TextOverflow.ellipsis)),
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 12,
                          color: Color.fromARGB(255, 245, 7, 4),
                        ),
                        Text("8:00-00:00 น.", style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          groupBooking(index, buttonColor, buttonShape, child, textColor, data)
        ],
      ),
    );
  }

  Column groupBooking(
      int index,
      Color buttonColor,
      RoundedRectangleBorder buttonShape,
      Widget? child,
      Color textColor,
      List<Staduaim> data) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
            margin: const EdgeInsets.only(bottom: 4),
            child: Text("฿${data[index].salary}/ชม")),
        SizedBox(
          width: 85,
          height: 30,
          child: MaterialButton(
            elevation: 0,
            onPressed: () {},
            disabledColor: Colors.white38,
            color: buttonColor,
            shape: buttonShape,
            child: child ??
                Text(
                  "จองเลย !",
                  style: TextStyle(color: textColor, fontSize: 13),
                  textAlign: TextAlign.center,
                ),
          ),
        )
      ],
    );
  }
}
