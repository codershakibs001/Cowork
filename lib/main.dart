import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/authentication/login/login.dart';

void main() {
  runApp(CoworkApp());
}

class CoworkApp extends StatelessWidget {
  const CoworkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
