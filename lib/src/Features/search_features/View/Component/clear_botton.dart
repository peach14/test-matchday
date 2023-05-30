import 'package:flutter/material.dart';
class ClearBotton extends StatelessWidget {
  const ClearBotton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.block_outlined,
        color: Color.fromARGB(255, 245, 7, 4),
      ),
      label: const Text("ล้าง",style: TextStyle(color:Color.fromARGB(255, 245, 7, 4), ),),
    );
  }
}
