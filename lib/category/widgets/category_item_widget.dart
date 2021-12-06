import 'package:flutter/material.dart';
import 'package:meals/categories/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  final Category category;
  const CategoryItem({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(category.title),
    );
  }
}
