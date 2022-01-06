import 'package:flutter/material.dart';
import 'package:meals/home/widgets/home_page_widget.dart';
import '../favorite/favorite_widget.dart';

class TabsWidget extends StatefulWidget {
  const TabsWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<TabsWidget> createState() => _TabsWidgetState();
}

class _TabsWidgetState extends State<TabsWidget> {
  int selectedWidgetIndex = 0;
  final List<String> titles = [
    'Lista de Categorias',
    'Meus Favoritos',
  ];
  final List<Widget> screens = [
    const Categories(),
    const FavoriteWidget(),
  ];

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
              titles[selectedWidgetIndex],
            ),
          ),
        ),
        body: screens[selectedWidgetIndex],
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
