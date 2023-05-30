import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  const Comment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const Icon(
              Icons.star,
              size: 20,
              color: Color.fromARGB(255, 245, 7, 4),
            ),
          ),
          const Text("0.0 "),
          const Text("(0 ความคิดเห็น)"),
        ],
      ),
      SizedBox(height: MediaQuery.of(context).size.height *0.02,),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("ยังไม่มีความคิดเห็น")
        ],),
    ],);
  }
}
