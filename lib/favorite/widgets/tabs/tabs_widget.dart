import 'package:flutter/material.dart';
import 'package:meals/home/widgets/home_page_widget.dart';
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
          title: const Center(
            child: Text('Vamos cozinhar?'),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.amber,
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
        body: const TabBarView(
          children: [
            Categories(),
            FavoriteWidget(),
          ],
        ),
      ),
    );
  }
}
