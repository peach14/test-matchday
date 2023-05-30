import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:matchday/src/Config/Routing/route.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: SettingRoute,
      theme: ThemeData(
        textTheme: GoogleFonts.promptTextTheme(),
        primarySwatch: Colors.blue,
      ),
    );

  }
}





