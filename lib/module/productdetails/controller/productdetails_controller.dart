import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/productdetails_view.dart';

class ProductdetailsController extends State<ProductdetailsView> implements MvcController {
  static late ProductdetailsController instance;
  late ProductdetailsView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}