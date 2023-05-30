import 'package:flutter/material.dart';

class SportCategory extends StatelessWidget {
  const SportCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.45,
        child: GridView.builder(
          itemCount: 15,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4),
          itemBuilder: (context, index) => Column(
            children: [
              Container(
                // padding: EdgeInsets.all(10),

                //    width: 40,

                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 248, 215, 215),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7)),
                          side: BorderSide(
                              width: 1.4,
                              color: const Color.fromARGB(255, 245, 7, 4)

                              // Color

                              //     .fromARGB(

                              //     255,

                              //     224,

                              //     218,

                              //     218)

                              )),
                      minimumSize: const Size(35, 60),
                    ),
                    onPressed: () {},
                    child: Icon(
                      Icons.sports_soccer_outlined,
                      color: Color.fromARGB(255, 245, 7, 4),
                      size: 30,
                    )),
              ),
              Text("ฟุตบอล")
            ],
          ),
        ));
  }
}
