import 'package:daily_update/views/splashpage/splashpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'views/detailpage/detailpage.dart';
import 'views/homepage/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black54,
          centerTitle: true,
          elevation: 2,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            wordSpacing: 2,
          ),
        ),
      ),
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => Splashpage(),
        ),
        GetPage(
          name: "/Home_Page",
          page: () => HomePage(),
        ),
        GetPage(
          name: "/Detail_Page",
          page: () => Detailpage(
            article: Get.arguments,
          ),
        ),
      ],
    );
  }
}


