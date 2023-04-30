// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:food_delivery/core.dart';

import '../../../state_util.dart';

class DashboardMenu extends StatelessWidget {
  const DashboardMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List menuItems = [
      {
        "label": "Dashboard",
        "subtitle": "Home page",
        "page": const HomeView(),
      },
      {
        "label": "ProductDetails",
        "subtitle": "Details Product",
        "page": const ProductdetailsView(),
      },
      {
        "label": "TrackingOrder",
        "subtitle": "Track Your Order Here",
        "page": const TrackorderView(),
      }
    ];

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          ListView.builder(
            itemCount: menuItems.length,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            clipBehavior: Clip.none,
            itemBuilder: (context, index) {
              var item = menuItems[index];
              return ListTile(
                onTap: () {
                  Get.to(item["page"]);
                },
                title: Text(item["label"]),
                subtitle: Text(item["subtitle"]),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.chevron_right,
                    size: 24.0,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
