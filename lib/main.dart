import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kotobia/constants.dart';
import 'package:kotobia/core/utlis/app_router.dart';

void main() {
  runApp(const Kotobia());
}

class Kotobia extends StatelessWidget {
  const Kotobia({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
