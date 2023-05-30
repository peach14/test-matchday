import 'package:flutter/material.dart';

class BackBotton extends StatelessWidget {
  const BackBotton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
         // context.go('/');
        },
        icon: const Icon(Icons.arrow_back));
  }
}
