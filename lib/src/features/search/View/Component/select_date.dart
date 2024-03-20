import 'package:flutter/material.dart';

class SelectDate extends StatelessWidget {
  const SelectDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            minimumSize: const Size(200, 45),
            backgroundColor: Colors.grey[200],
            elevation: 0),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.access_time,
                  size: 22,
                  color: Color.fromARGB(255, 245, 7, 4),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "วันที่",
                      style: TextStyle(color: Colors.black87),
                    ),
                    Text(
                      "วันจันทร์ 15 พ.ค 2566 ",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
