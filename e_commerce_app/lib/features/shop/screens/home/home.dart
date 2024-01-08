import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/common_shapes/container/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          TPrimaryHeaderContainer(
            child: Column(
              children: [
                TAppBar(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(TTexts.homeAppbarTitle,
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .apply(color: TColors.grey)),
                      Text(TTexts.homeAppbarSubTitle,
                          style:
                              Theme.of(context).textTheme.headlineSmall!.apply(
                                    color: TColors.white,
                                  )),
                    ],
                  ),
                  actions: [
                    TCartCounterIcon(
                      onPressed: () {},
                      iconColor: TColors.white,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
