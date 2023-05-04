import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/trackorder_controller.dart';

class TrackorderView extends StatefulWidget {
  const TrackorderView({Key? key}) : super(key: key);

  Widget build(context, TrackorderController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Trackorder"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<TrackorderView> createState() => TrackorderController();
}