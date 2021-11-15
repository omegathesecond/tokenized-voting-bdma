import 'package:admin/app/modules/home/bindings/initial_binding.dart';
import 'package:admin/app/modules/home/views/home_view.dart';
import 'package:admin/app/routes/app_pages.dart';
import 'package:admin/constants.dart';
import 'package:admin/controllers/MenuController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BDMA - Voting Portal',
      initialBinding: InitialBinding(),
      locale: Get.deviceLocale,
      getPages: AppPages.routes,
      home: HomeView(),
      // navigatorObservers: <NavigatorObserver>[observer],
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
    );
  }
}
