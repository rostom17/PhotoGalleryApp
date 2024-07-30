import 'package:flutter/material.dart';

import 'package:photo_gallery/Screens/HomeScreen.dart';

class PhotoGalleryApp extends StatelessWidget{
  const PhotoGalleryApp ({super.key});

  @override
  Widget build (BuildContext context){
    var screenWidth = MediaQuery.of(context).size.width;
    return  MaterialApp(
      home: const HomeScreen(),

      theme: ThemeData(
        appBarTheme:const AppBarTheme(
          backgroundColor: Colors.lightGreen,
          titleTextStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightGreen,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: screenWidth * (1/3),vertical: 20)
          )
        )
      ),
    );
  }
}