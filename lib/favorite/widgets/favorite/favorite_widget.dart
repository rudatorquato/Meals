import 'package:flutter/material.dart';
import 'package:meals/meal/models/meal.dart';
import 'package:meals/meal/widgets/meal_item/meal_item_widget.dart';

class FavoriteWidget extends StatelessWidget {
  final List<Meal> favoriteMeals;
  const FavoriteWidget(
    this.favoriteMeals, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return const Center(
        child: Text('Nenhuma refeição foi marcada como favorita!'),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(favoriteMeals[index]);
        },
      );
    }
  }
}
