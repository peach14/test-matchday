import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetThemeData extends StatelessWidget {
  const SetThemeData({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: GoogleFonts.promptTextTheme(),
          primarySwatch: Colors.blue,
        )
    );
  }
}
