import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:matchday/src/Shared_Components/Widget/animation_next_page.dart';

import '../../../search_features/View/search_page.dart';


class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        child:GestureDetector(
          onTap: () {
            Navigator.push(context, SlideRightRoute(page: SearchPage()));
          //  context.go("/search");
          },
          child: Container(
              height: MediaQuery.of(context).size.height * 0.067,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(
                      1.0,
                      1.0,
                    ),
                    blurRadius: 2.0,
                    spreadRadius: 1.0,
                  ), //BoxShadow
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(18.0)),
              ),
              margin: const EdgeInsets.only(top: 125, left: 16, right: 16),
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [Text("ค้นหาสถานที่"), Icon(Icons.search)],
                ),
              )),
        )
    );
  }
}
