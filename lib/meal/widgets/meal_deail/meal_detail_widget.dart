import 'package:flutter/material.dart';
import 'package:meals/meal/models/meal.dart';

class MealDetail extends StatelessWidget {
  const MealDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: const Center(
        child: Text('Detalhes da Refeição'),
      ),
    );
  }
}
