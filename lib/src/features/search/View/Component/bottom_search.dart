import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomSearch extends StatelessWidget {
  const BottomSearch({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 5),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            minimumSize: const Size(300, 35),
            backgroundColor: const Color.fromARGB(255, 245, 7, 4),
          ),
          onPressed: () {
            context.go("/ShowResearch");
            //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ShowResearch(),));
          },
          child: const Text("ค้นหา")),
    );
  }
}
