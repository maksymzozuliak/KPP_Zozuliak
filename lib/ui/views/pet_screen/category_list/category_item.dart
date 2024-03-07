import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../enum/category_enum.dart';
import '../../../widgets/text/body4_text.dart';

class CategoryItem extends StatelessWidget {

  final Category category;

  const CategoryItem(
      {
        required this.category
      }
  );

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.fromLTRB(6,6,8,6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 0),
          ),
        ]
      ),
      child: Row(
        children: [
          Image.asset(
            height: 28.0,
            width: 28.0,
            category.icon,
          ),
          const SizedBox(width: 4.0),
          Body4Text(
            text: category.name,
            textColor: const Color(0xFF5F5B5B),
          )
        ],
      )
    );
  }
}