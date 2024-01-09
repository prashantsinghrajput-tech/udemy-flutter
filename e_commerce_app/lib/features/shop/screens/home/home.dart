import 'package:e_commerce_app/common/widgets/common_shapes/container/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/common_shapes/container/search_container.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          ///Header --[Section #3]
          TPrimaryHeaderContainer(
            child: Column(
              children: [
                const THomeAppBar(),

                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// --Search bar
                const TSearchContainer(
                  text: 'Search in Store',
                ),
                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// --Categories
                Padding(
                  padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      Text(
                        'Popular Categories',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
