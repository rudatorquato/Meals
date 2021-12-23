import 'package:flutter/material.dart';
import '../../models/category_model.dart';

class CategoriesMeals extends StatelessWidget {
  final Category category;
  const CategoriesMeals(
    this.category, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: Text('Receitas por Categoria ${category.id}'),
      ),
    );
  }
}
