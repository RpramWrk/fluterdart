import 'package:flutter/material.dart';
import 'package:utp/screens/splashscreen.dart';

void  main() {
  runApp(const raka());
  
}
class raka extends StatelessWidget {
  const raka ({Key?key}):super(key:key);

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: 'Flutter Demo',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,

    );
  }
}