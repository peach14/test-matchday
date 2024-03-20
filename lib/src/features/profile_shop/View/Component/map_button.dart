import 'package:flutter/material.dart';

class MapButton extends StatelessWidget {
  const MapButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 17),
      //  padding: EdgeInsets.only(top: 25,bottom: 25,left: 131,right: 131),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC50MGGXqMI786IIddJjNFbx5AszidzQzn7A&usqp=CAU")),
          color: Colors.blue),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(10, 40),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            onPressed: () {},
            icon: const Icon(Icons.map_outlined, color: Colors.black),
            label: const Text(
              "แผนที่",
              style: TextStyle(color: Colors.black),
            )),
      ),
    );
  }
}
