import 'package:flutter/material.dart';
import 'package:meals/drawer/widgets/main_drawer_widget.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      drawer: const MainDrawerWidget(),
      body: const Center(
        child: Text('Configurações'),
      ),
    );
  }
}
