import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../home/controller/staduim_controller.dart';

class SlidImage extends ConsumerStatefulWidget {
  const SlidImage({Key? key, this.gropImage}) : super(key: key);

  final List<dynamic>? gropImage;

  @override
  ConsumerState<SlidImage> createState() => _SlidImageState();
}

class _SlidImageState extends ConsumerState<SlidImage> {
  int activeIndex = 0;
  final controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(staDuaimProviders);
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.30,
      child: CarouselSlider.builder(
        carouselController: controller,
        itemCount: data.gropimage.length,
        options: CarouselOptions(
            height: 400,
            //   autoPlay: true,
            pageSnapping: true,
            enableInfiniteScroll: false,
            // autoPlayInterval: Duration(seconds: 2),
            //    enlargeStrategy: CenterPageEnlargeStrategy.height,
            viewportFraction: 1,
            //   autoPlayAnimationDuration: Duration(seconds: 2)
            enlargeCenterPage: true,
            // reverse: true,
            onPageChanged: (index, reason) =>
                setState(() => activeIndex = index)),
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return Stack(
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                    decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(data.gropimage[index].image)),
                )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.grey[200],
                          elevation: 0),
                      onPressed: () {
                        context.go('/');
                        //  Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 20,
                        color: Colors.grey[700],
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              backgroundColor: Colors.grey[200],
                              elevation: 0),
                          onPressed: () {},
                          child: Icon(
                            Icons.bookmark,
                            size: 20,
                            color: Colors.grey[600],
                          )),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: MediaQuery.of(context).size.height * 0.1,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              color: Colors.white54, shape: BoxShape.circle),
                          //padding: const EdgeInsets.all(2.0),
                          child: Text(
                            "${index + 1}/${data.gropimage.length}",
                            style: const TextStyle(fontSize: 17),
                          ))
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
