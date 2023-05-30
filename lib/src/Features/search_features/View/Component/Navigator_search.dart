import 'package:flutter/material.dart';

class NavigetorSearch extends StatelessWidget {
  const NavigetorSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width  *0.76,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              minimumSize: const Size(190, 35),
              backgroundColor: Colors.grey[200],
              elevation: 0),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "ค้นหาสถานที่                              ",
                style: TextStyle(color: Colors.black),
              ),
            ],
          )),
    );
  }
}
