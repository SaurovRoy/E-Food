import 'package:ecommercee/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'BottomNav/home.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GoogleSignIn();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: 'AIzaSyCgY3nAJPUIt8kJjw9GjezzieaGOhx6gVQ',
        appId: '1:458853041034:android:a276c78da3b6609a25fe73',
        messagingSenderId: '458853041034',
        projectId: 'e-commercee-9d2c0'
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375,812),
      builder: (BuildContext context, Widget? widget) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'E-Commerce',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: splash_screen(),

        );
      },
    );
  }
}
