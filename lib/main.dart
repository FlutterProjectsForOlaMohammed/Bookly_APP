import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_routes.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark(background: kPrimaryColor),
      ),
    );
  }
}
