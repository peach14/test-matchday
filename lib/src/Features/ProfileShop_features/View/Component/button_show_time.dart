import 'package:flutter/material.dart';

class ButtonShowTime extends StatelessWidget {
  const ButtonShowTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
        child: Row(
          children: [
            Icon(Icons.date_range_outlined),
            SizedBox(width: MediaQuery.of(context).size.width *0.01,),
            Text("แสดงตารางเวลา")
          ],)

    );
  }
}
