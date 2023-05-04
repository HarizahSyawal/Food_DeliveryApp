import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/productdetails_controller.dart';

class ProductdetailsView extends StatefulWidget {
  const ProductdetailsView({Key? key}) : super(key: key);

  Widget build(context, ProductdetailsController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Productdetails"),
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
  State<ProductdetailsView> createState() => ProductdetailsController();
}