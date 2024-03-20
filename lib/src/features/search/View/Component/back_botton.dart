import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BackBotton extends StatelessWidget {
  const BackBotton({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          context.go('/');
        },
        icon: const Icon(Icons.arrow_back));
  }
}
