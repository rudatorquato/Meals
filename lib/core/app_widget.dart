import 'package:flutter/material.dart';
import 'package:meals/category/widgets/categories_meals/categories_meals_widget.dart';
import 'package:meals/home/widgets/home_page_widget.dart';
import 'package:meals/meal/widgets/meal_deail/meal_detail_widget.dart';
import 'package:meals/utils/routes/app_routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.pink,
          ).copyWith(
            secondary: Colors.amber,
          ),
          fontFamily: 'Raleway',
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          textTheme: ThemeData.light().textTheme.copyWith(
                // subtitle1
                headline6: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                ),
              )),
      routes: {
        AppRoutes.HOME: (ctx) => const Categories(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMeals(),
        AppRoutes.MEAL_DETAIL: (ctx) => const MealDetail(),
      },
    );
  }
}
