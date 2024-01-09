import 'package:e_commerce_app/common/widgets/common_shapes/container/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/common_shapes/container/search_container.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          ///Header --[Section #3]
          TPrimaryHeaderContainer(
            child: Column(
              children: [
                THomeAppBar(),

                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// --Search bar
                TSearchContainer(
                  text: 'Search in Store',
                ),
                SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// --Categories
                Padding(
                  padding: EdgeInsets.only(left: TSizes.defaultSpace),
                  child: Column(
                    children: [
                      TSectionHeading(
                        title: 'Popular Categories',
                        showActionButton: false,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: TSizes.spaceBtwItems,
                      ),

                      ///Categories
                      THomeCategories()
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
