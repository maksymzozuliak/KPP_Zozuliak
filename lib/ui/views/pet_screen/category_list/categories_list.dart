import 'package:adopt_a_pet/ui/views/pet_screen/category_list/category_item.dart';
import 'package:flutter/material.dart';
import '../../../../enum/category_enum.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryList extends StatelessWidget {

  final List<Category> categoryList;

  const CategoryList({
    required this.categoryList
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        itemCount: categoryList.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 12.0),
        itemBuilder: (context, index) {
          return CategoryItem(category: categoryList[index]);
        },
      ),
    );
  }
}