import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'src/configs/routing/route.dart';

void main() {
  runApp(const ProviderScope(child: MyApp.native()));
}

class MyApp extends StatelessWidget {
  final bool isDevicePreview;

  const MyApp.native({super.key}) : isDevicePreview = false;

  const MyApp.devicePreview({super.key}) : isDevicePreview = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: isDevicePreview ? DevicePreview.locale(context) : null,
      builder: isDevicePreview ? DevicePreview.appBuilder : null,
      routerConfig: route,
      theme: ThemeData(
        textTheme: GoogleFonts.promptTextTheme(),
        primarySwatch: Colors.blue,
      ),
    );
  }
}
