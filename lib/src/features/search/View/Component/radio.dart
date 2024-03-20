import 'package:flutter/material.dart';

enum radioEnum { item1, item2 }

class CustomRadio extends StatefulWidget {
  const CustomRadio({Key? key}) : super(key: key);

  @override
  State<CustomRadio> createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  radioEnum? _radioenum;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.27,
          height: MediaQuery.of(context).size.height * 0.065,
          child: RadioListTile<radioEnum>(
            activeColor: const Color.fromARGB(255, 245, 7, 4),
            contentPadding: const EdgeInsets.only(bottom: 20),
            value: radioEnum.item1,
            groupValue: _radioenum,
            title: const Text(
              "จองได้",
              style: TextStyle(color: Colors.black87, fontSize: 14),
            ),
            onChanged: (value) {
              setState(() {
                _radioenum = value;
              });
            },
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.065,
          child: RadioListTile<radioEnum>(
            activeColor: const Color.fromARGB(255, 245, 7, 4),
            contentPadding: const EdgeInsets.all(0.0),
            value: radioEnum.item2,
            title: const Text(
              "แสดงทั้งหมด",
              style: TextStyle(color: Colors.black87, fontSize: 14),
            ),
            groupValue: _radioenum,
            onChanged: (value) {
              setState(() {
                _radioenum = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
