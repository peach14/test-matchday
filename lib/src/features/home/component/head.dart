import 'package:flutter/material.dart';

import '../../../constants/asset_path.dart';

class Head extends StatelessWidget {
  const Head({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 8),
          color: const Color.fromARGB(255, 245, 7, 4),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.23,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            IconPath.logoApp,
                            scale: 2,
                          ),
                          const Text(
                            "match \n day",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.notifications_none_sharp,
                                  color: Colors.white,
                                  size: 28,
                                )),
                            Container(
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                padding: const EdgeInsets.all(2.0),
                                child: const CircleAvatar(
                                  foregroundImage: NetworkImage(
                                      "https://travel.mthai.com/app/uploads/2019/04/Gyeongju-1.jpg"),
                                  maxRadius: 14,
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: const Text(
                      "วันนี้คุณอยากเล่นอะไร?",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: const Text(
                      "peach",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              // Container(
              //   alignment: Alignment.bottomCenter,
              //   constraints: BoxConstraints(minHeight: 15),
              //   color: Colors.white,
              // )
            ],
          ),
        ),
        //    const Expanded(flex: 4, child: SizedBox.shrink())
      ],
    );
  }
}
