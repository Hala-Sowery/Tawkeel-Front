import 'package:flutter/material.dart';
import 'package:tawkeel/payment.dart';
import 'package:tawkeel/profile.dart';
import 'package:tawkeel/show_pages.dart';
import 'package:tawkeel/signin.dart';
import 'package:tawkeel/signup-1.dart';
import 'package:tawkeel/signup-2.dart';
import 'package:tawkeel/splash_screen.dart';
import 'package:tawkeel/types_page.dart';
import 'chat.dart';
import 'layers_page.dart';

void main() {
  runApp(
      MaterialApp(
        home: const ShowPages(),
        routes: {
          "signup-1": (context) => const Signup_1(),
          "signup-2": (context) => const Signup_2(),
          "SplashScreen" : (context) => const SplashScreen(),
          "signin" : (context) => const SignIn(),
          "types_page" : (context) => const TypesPage(),
          "chat" : (context) => const Chat(),
          "payment" : (context) => const Payment(),
          "profile" : (context) => const Profile(),
          "layers_page" : (context) => const LayersPage(),
          "show_pages" : (context) => const ShowPages(),
        },
        debugShowCheckedModeBanner: false,
      ));
}
