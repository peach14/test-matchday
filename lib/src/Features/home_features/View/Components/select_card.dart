import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:matchday/src/Features/home_features/Controller/home_controller.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.27,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: datastaduim.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Consumer(
                builder: (BuildContext context, WidgetRef ref, Widget? child)
                  => GestureDetector(
                  onTap: () {
                   context.go('/ShopPage');
                  ref.read(gropimage.notifier).state=datastaduim[index]['gropimage'];
                  ref.read(nameStadium.notifier).state=datastaduim[index]['staduim'];
                  ref.read(salary.notifier).state=datastaduim[index]['salary'];
                  ref.read(sport.notifier).state=datastaduim[index]['name'];
                  ref.read(Iconsport.notifier).state=datastaduim[index]['pro_icon'];
                  ref.read(phat.notifier).state=datastaduim[index]['part'];
                  log(ref.watch(gropimage).toString());
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => ShopPage(),
                    //     ));
                  },
                  child: Card(
                    margin: const EdgeInsets.only(left: 20, right: 12),
                    child: SizedBox(
                      width: 289,
                      height: 155,
                      child: Column(children: [
                        Container(
                            height: 85,
                            decoration:  BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      datastaduim[index]['part'])),
                            )),
                        Container(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(right: 5),
                                      width: 50,
                                      height: 45,
                                      decoration:  BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                datastaduim[index]['logo'])),
                                      )),
                                  SizedBox(
                                    width: 130,
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children:  [
                                            Text( datastaduim[index]['staduim']),
                                            const Icon(
                                              Icons.star,
                                              size: 12,
                                              color:
                                              Color.fromARGB(255, 245, 7, 4),
                                            ),
                                            Text("0"),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.location_on_outlined,
                                              size: 12,
                                              color:
                                              Color.fromARGB(255, 245, 7, 4),
                                            ),
                                            Flexible(
                                                child: Text(
                                                    "489.3 กม-คลองหลวง dsd",
                                                    style:
                                                    TextStyle(fontSize: 12),
                                                    overflow:
                                                    TextOverflow.ellipsis)),
                                          ],
                                        ),
                                        Row(
                                          children: const [
                                            Icon(
                                              Icons.access_time,
                                              size: 12,
                                              color:
                                              Color.fromARGB(255, 245, 7, 4),
                                            ),
                                            Text("8:00-00:00 น.",
                                                style: TextStyle(fontSize: 12)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(bottom: 4),
                                      child:  Text("฿${datastaduim[index]['salary']}/ชม")),
                                  Container(
                                    height: 30,
                                    padding: const EdgeInsets.only(right: 5),
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          shape: const StadiumBorder(),
                                          minimumSize: const Size(90, 30),
                                          backgroundColor: const Color.fromARGB(
                                              255, 245, 7, 4),
                                        ),
                                        onPressed: () {},
                                        child: const Text("จองเลย !")),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
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
                      children:  [
                        datastaduim[index]['icon'],
                        Text(
                          datastaduim[index]['name'],
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 245, 7, 4)),
                        ),
                      ],
                    )),
              )
            ],
          );
        },
      ),
    );
  }
}
