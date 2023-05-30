import 'package:flutter/material.dart';
import 'package:matchday/src/Features/home_features/Controller/home_controller.dart';
class SelectIcon extends StatefulWidget {
  const SelectIcon({
    super.key,
  });
  @override
  State<SelectIcon> createState() => _SelectIconState();
}
class _SelectIconState extends State<SelectIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.14,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: testdata.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: Colors.grey[200],
                      padding: const EdgeInsets.all(9),
                      elevation: 0),
                  onPressed: () {},
                  child:testdata[index]['icon']
              ),
               Text(
                testdata[index]['name'],
                style: const TextStyle(fontSize: 13),
              )
            ],
          );
        },
      ),
    );
  }
}
