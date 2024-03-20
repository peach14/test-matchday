import 'package:flutter/material.dart';

class Facilities extends StatefulWidget {
  const Facilities({Key? key}) : super(key: key);

  @override
  State<Facilities> createState() => _FacilitiesState();
}

class _FacilitiesState extends State<Facilities> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.12,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      side: BorderSide(
                        width: 1.0,
                        color: Color.fromARGB(255, 192, 191, 191),
                      )),
                  minimumSize: const Size(35, 65),
                ),
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.storefront,
                      color: Color.fromARGB(255, 245, 7, 4),
                      size: 25,
                    ),
                    Text(
                      "ร้านค้า",
                      style: TextStyle(color: Colors.grey[800]),
                    )
                  ],
                )),
          );
        },
      ),
    );
  }
}
