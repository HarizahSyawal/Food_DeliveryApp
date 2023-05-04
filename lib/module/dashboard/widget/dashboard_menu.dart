// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../../shared/theme/theme_food_delivery.dart';
import '../../../state_util.dart';
import '../../home/view/home_view.dart';
import '../../productdetails/view/productdetails_view.dart';
import '../../trackorder/view/trackorder_view.dart';

class DashboardMenu extends StatelessWidget {
  const DashboardMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List menuItems = [
      {
        "label": "Dashboard",
        "subtitle": "Home page",
        "page": const HomeView(),
        "theme": getFoodDeliveryTheme()
      },
      {
        "label": "ProductDetails",
        "subtitle": "Details Product",
        "page": const ProductdetailsView(),
        "theme": getFoodDeliveryTheme()
      },
      {
        "label": "TrackingOrder",
        "subtitle": "Track Your Order Here",
        "page": const TrackorderView(),
        "theme": getFoodDeliveryTheme()
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
                  Get.mainTheme.value = item["theme"];
                  Get.offAll(item["page"]);
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
