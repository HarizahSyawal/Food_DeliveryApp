import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';

import 'module/dashboard/view/dashboard_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashboardView(),
    );
  }
}
