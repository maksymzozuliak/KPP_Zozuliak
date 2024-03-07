import 'package:adopt_a_pet/enum/category_enum.dart';
import 'package:adopt_a_pet/ui/views/pet_screen/category_list/categories_list.dart';
import 'package:adopt_a_pet/ui/views/pet_screen/location_widget.dart';
import 'package:adopt_a_pet/ui/views/pet_screen/pet_search_bar.dart';
import 'package:adopt_a_pet/ui/widgets/text/h2_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: LocationWidget(),
            ),
            const SizedBox(
              height: 18.0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: PetSearchBar(
                height: 48.0,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: H2Text(
                text: "Pet Categories",
                textColor: const Color(0xFF5F5B5B),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            const CategoryList(
              categoryList: [
                Category.dog,
                Category.cat,
                Category.turtle,
                Category.hamster,
                Category.rabbit,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
