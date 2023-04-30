import 'package:flutter/material.dart';
import 'package:food_delivery/state_util.dart';
import '../view/trackorder_view.dart';

class TrackorderController extends State<TrackorderView> implements MvcController {
  static late TrackorderController instance;
  late TrackorderView view;

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