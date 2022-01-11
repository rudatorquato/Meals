import 'package:flutter/material.dart';
import 'package:meals/home/widgets/home_page_widget.dart';
import 'package:meals/meal/models/meal.dart';
import '../favorite/favorite_widget.dart';
import '../../../drawer/widgets/main_drawer_widget.dart';

class TabsWidget extends StatefulWidget {
  final List<Meal> favoriteMeals;

  const TabsWidget(
    this.favoriteMeals, {
    Key? key,
  }) : super(key: key);

  @override
  State<TabsWidget> createState() => _TabsWidgetState();
}

class _TabsWidgetState extends State<TabsWidget> {
  int selectedWidgetIndex = 0;
  final List<String> _titles = [
    'Lista de Categorias',
    'Meus Favoritos',
  ];
  late List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      const Categories(),
      FavoriteWidget(widget.favoriteMeals),
    ];
  }

  _selectWidget(int index) {
    setState(() {
      selectedWidgetIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              _titles[selectedWidgetIndex],
            ),
          ),
        ),
        drawer: const MainDrawerWidget(),
        body: _screens[selectedWidgetIndex],
        bottomNavigationBar: BottomNavigationBar(
          //backgroundColor: Colors.pink,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.amber,
          currentIndex: selectedWidgetIndex,
          type: BottomNavigationBarType.shifting,
          onTap: _selectWidget,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.pink,
              icon: Icon(Icons.category),
              label: 'Categorias',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.pink,
              icon: Icon(Icons.star),
              label: 'Favoritos',
            )
          ],
        ),
      ),
    );
  }
}
