import 'package:flutter/material.dart';
import 'package:meals/category/widgets/categories_meals/categories_meals_widget.dart';
import 'package:meals/meal/widgets/meal_deail/meal_detail_widget.dart';
import 'package:meals/settings/widgets/settings_widget.dart';
import 'package:meals/favorite/widgets/tabs/tabs_widget.dart';
import 'package:meals/utils/routes/app_routes.dart';
import '../meal/models/meal.dart';
import 'assets/data/dummy_data.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Meal> _availableMeals = DUMMY_MEALS;

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
        AppRoutes.HOME: (ctx) => const TabsWidget(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMeals(_availableMeals),
        AppRoutes.MEAL_DETAIL: (ctx) => const MealDetail(),
        AppRoutes.SETTINGS: (ctx) => const SettingsWidget(),
      },
    );
  }
}
