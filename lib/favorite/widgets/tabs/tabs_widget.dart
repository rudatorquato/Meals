import 'package:flutter/material.dart';
import '../../../category/widgets/categories_meals/categories_meals_widget.dart';
import '../favorite/favorite_widget.dart';

class TabsWidget extends StatelessWidget {
  const TabsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Vamos cozinhar?'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Categorias',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favoritos',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CategoriesMeals(),
            const FavoriteWidget(),
          ],
        ),
      ),
    );
  }
}
