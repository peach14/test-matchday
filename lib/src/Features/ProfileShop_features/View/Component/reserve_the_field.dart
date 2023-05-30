import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matchday/src/Features/home_features/Controller/home_controller.dart';

class ReserveTheField extends StatefulWidget {
  const ReserveTheField({Key? key}):super(key: key);

  @override
  State<ReserveTheField> createState()=>_ReserveTheFieldState();
}
List<String> list = <String>['1', '2', '3', '4'];
class _ReserveTheFieldState extends State<ReserveTheField> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(top: 15, bottom: 15),
      child: SizedBox(
        child: Stack(
          children: [
            Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                log("1111${ref.watch(phat)}");

                return Column(children: [
                Container(
                    height: 95,
                    decoration:  const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                             "https://www.teamturfsport.com/wp-content/uploads/2017/03/IMG_1024.jpg"
                          )),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment:
                    MainAxisAlignment
                        .spaceBetween,
                    children: [
                      Container(
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment:
                          CrossAxisAlignment
                              .start,
                          children: [
                            Container(
                                child:
                                const Text("ในร่ม สนามย่อย")),
                            Container(
                              margin: EdgeInsets.only(bottom: 5),
                              padding: EdgeInsets.all(10),
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height * 0.07,
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.27,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(5.5)),
                                  border: Border.all(
                                      width: 1.0, color: Colors.grey)),
                              child:
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("จำนวน"),
                                  DropdownButton<String>(
                                    value: dropdownValue,
                                    icon: const Icon(Icons.arrow_drop_down,),
                                    elevation: 50,
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black87),

// style: const TextStyle(color: Colors.deepPurple),
                                    onChanged: (String? value) {
// This is called when the user selects an item.
                                      setState(() {
                                        dropdownValue = value!;
                                      });
                                    },
                                    items: list.map<DropdownMenuItem<String>>((
                                        String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  )
                                ],),),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child:
                               Text("฿${ref.watch(salary)}/ชม")),
                          Text("฿1000/ชม", style: TextStyle(
                              fontSize: 13,
                              color: Colors.black54),),
                          Container(
                            child: ElevatedButton(
                                style:
                                ElevatedButton
                                    .styleFrom(

                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(7)),

                                  minimumSize:
                                  const Size(90, 38),
                                  backgroundColor:
                                  const Color
                                      .fromARGB(
                                      255,
                                      245,
                                      7,
                                      4),
                                ),
                                onPressed: () {},
                                child: const Text(
                                    "จองเลย !")),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ]);
              },
            ),


            Container(
              margin: EdgeInsets.only(left: 230, top: 50),
              width: 108,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      minimumSize: const Size(0, 25),
                      backgroundColor:
                      Colors.amber,
                      elevation: 0),
                  onPressed: () {},
                  child: Row(
                    children: [
                      const Icon(
                        Icons.sell_rounded,
                        size: 15,
                        color: Colors.white,
                      ),
                      SizedBox(width: MediaQuery
                          .of(context)
                          .size
                          .width * 0.02,),
                      const Text(
                        "ราคาพิเศษ",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white),
                      ),
                    ],
                  )),
            )


          ],
        ),
      ),
    );
  }
}
