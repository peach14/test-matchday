import 'package:flutter/material.dart';

class head extends StatelessWidget {
  const head({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8.0, right: 15),
      color: const Color.fromARGB(255, 245, 7, 4),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.26,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        image: DecorationImage(
                            image: AssetImage("image/images.png"))),
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
              Row(
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
                          color: Colors.white, shape: BoxShape.circle),
                      padding: const EdgeInsets.all(2.0),
                      child: const CircleAvatar(
                        foregroundImage: NetworkImage(
                            "https://travel.mthai.com/app/uploads/2019/04/Gyeongju-1.jpg"),
                        maxRadius: 14,
                      ))
                ],
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "วันนี้คุณอยากเล่นอะไร?",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "peach",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
