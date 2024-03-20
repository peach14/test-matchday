import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Positioned.fill(
          child: Column(
            children: [
              const Spacer(flex: 9),
              Expanded(
                flex: 2,
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    double heights = constraints.biggest.height;
                    return Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: () => context.go('/search'),
                        child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FittedBox(
                                      fit: BoxFit.cover,
                                      child: Text(
                                        "ค้นหาสถานที่",
                                        style: TextStyle(
                                            fontSize: heights < 14.41 ? 7 : 11,
                                            color: Colors.black),
                                      ),
                                    ),
                                    Icon(
                                      Icons.search,
                                      size: heights < 16.21 ? 9 : 16,
                                    )
                                  ],
                                ),
                              ],
                            )),
                      ),
                    );
                  },
                ),
              ),
              const Spacer(),
            ],
          ),
        )
      ],
    );
  }
}
