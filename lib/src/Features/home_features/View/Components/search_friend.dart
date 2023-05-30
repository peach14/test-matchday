import 'package:flutter/material.dart';

class SearchFriend extends StatelessWidget {
  const SearchFriend({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.3,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [Icon(Icons.person), Text("0/2")],
        ),
      ),
    );
  }
}
