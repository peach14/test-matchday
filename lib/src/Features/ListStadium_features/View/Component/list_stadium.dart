import 'package:flutter/material.dart';

class ListStaduim extends StatelessWidget {
  const ListStaduim({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:MediaQuery.of(context).size.height * 0.765,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) =>
            Padding(
              padding: const EdgeInsets.
              only(bottom: 10.0),
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Card(

                      child: SizedBox(
                        width: double.infinity,
                        height: 155,
                        child: Column(children: [
                          Container(
                              height: 85,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        "https://www.teamturfsport.com/wp-content/uploads/2017/03/IMG_1024.jpg")),
                              )),
                          Container(
                            padding: const EdgeInsets.only(top: 5),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment
                                  .spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 210,
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment
                                            .start,
                                        children: [
                                          Row(
                                            children: const [
                                              Text(
                                                  "U Sport Arena "),
                                              Icon(
                                                Icons.star,
                                                size: 12,
                                                color: Color
                                                    .fromARGB(
                                                    255,
                                                    245,
                                                    7,
                                                    4),
                                              ),
                                              Text("0"),
                                            ],
                                          ),
                                          Row(
                                            children:  [
                                              Icon(
                                                Icons
                                                    .location_on_outlined,
                                                size: 12,
                                                color: Color
                                                    .fromARGB(
                                                    255,
                                                    245,
                                                    7,
                                                    4),
                                              ),
                                              Container(
                                                width: 180,
                                                child: Text(
                                                  "489.3 กม-คลองหลวง ปทุมธานี",
                                                  style: TextStyle(
                                                      fontSize:
                                                      12),
                                                  // overflow:
                                                  // TextOverflow.ellipsis

                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons
                                                    .access_time,
                                                size: 12,
                                                color: Color
                                                    .fromARGB(
                                                    255,
                                                    245,
                                                    7,
                                                    4),
                                              ),
                                              Text(
                                                  "8:00-00:00 น.",
                                                  style: TextStyle(
                                                      fontSize:
                                                      12)),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.end,
                                  children: [
                                    Container(
                                        margin:
                                        const EdgeInsets.only(
                                            bottom: 4),
                                        child:
                                        const Text("฿900/ชม")),
                                    Container(
                                      height: 30,
                                      padding:
                                      const EdgeInsets.only(
                                          right: 5),
                                      child: ElevatedButton(
                                          style:
                                          ElevatedButton
                                              .styleFrom(
                                            shape:
                                            const StadiumBorder(),
                                            minimumSize:
                                            const Size(90, 30),
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
                        ]),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 3.7),
                    width: 121,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(topRight:  Radius.circular(6.0),bottomRight:  Radius.circular(6.0))
                            ),
                            minimumSize: const Size(20, 22),
                            backgroundColor:
                            Colors.amber,
                            elevation: 0),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Icon(
                                Icons.access_time,
                                size: 15,
                                color: Colors.white
                            ),
                            Text(
                              " เหลือ 2 สนาม",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                          ],
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 278,top: 12),
                    child: CircleAvatar(
                        foregroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsc7kt0bzjU59C7LKnky91Yvxfod0KCnfkRhEOX66bLzWtixiFczgziMq_F2RGnPxduAE&usqp=CAU")),
                  )
                ],
              ),
            )
        ,),
    );
  }
}
