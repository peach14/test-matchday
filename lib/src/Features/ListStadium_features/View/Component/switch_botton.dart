import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SwitchBotton extends StatefulWidget {
  const SwitchBotton({Key? key}) : super(key: key);

  @override
  State<SwitchBotton> createState() => _SwitchBottonState();
}

class _SwitchBottonState extends State<SwitchBotton> {
  bool _switch = false;
  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      width: 86.0,
      height: 29.0,
      activeTextColor: Colors.white,
      inactiveTextColor: Colors.white,
      inactiveText: 'จองได้',
      valueFontSize: 12,
      activeTextFontWeight:FontWeight.w100 ,
      inactiveTextFontWeight: FontWeight.w100,
      activeText: "ทั้งหมด",
      showOnOff: true,
      inactiveColor: Colors.greenAccent,
      activeColor: Color.fromARGB(255, 245, 7, 4),
      value: _switch,
      onToggle: (bool value) {

        setState(() => _switch =value);
      },

    );
  }
}
