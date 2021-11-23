import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  static const String _title = 'New World Watermark';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int _selectedIndex = 0;
  List<List<double>> watermark = [
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
  ];

  List<String> images = [
    'assets/images/m_voidbentheavy_head.png',
    'assets/images/m_voidbentheavy_chest.png',
    'assets/images/m_voidbentheavy_gloves.png',
    'assets/images/m_voidbentheavy_legs.png',
    'assets/images/m_voidbentheavy_feet.png',
    'assets/images/corruptedamulet13.png',
    'assets/images/corruptedearring04.png',
    'assets/images/corruptedring25.png',
  ];

  Widget _buildNavigation() {
    return NavigationRail(
      selectedIconTheme: const IconThemeData(color: null),
      unselectedIconTheme: const IconThemeData(color: null),
      selectedIndex: _selectedIndex,
      onDestinationSelected: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      labelType: NavigationRailLabelType.selected,
      destinations: const <NavigationRailDestination>[
        NavigationRailDestination(
          icon:
              ImageIcon(AssetImage('assets/images/m_voidbentheavy_chest.png')),
          // selectedIcon: Image(image: image),
          label: Text('First'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.bookmark_border),
          selectedIcon: Icon(Icons.book),
          label: Text('Second'),
        ),
        NavigationRailDestination(
          icon: Icon(Icons.star_border),
          selectedIcon: Icon(Icons.star),
          label: Text('Third'),
        ),
      ],
    );
  }

  Widget _buildGrid() {
    return GridView.builder(
      itemCount: images.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Column(children: [
          Image.asset(images[index]),
          TextFormField(
            controller: null,
            keyboardType: TextInputType.number,
            onChanged: (text) {
              log(text);
              // watermark[_selectedIndex][index] = double.parse(text);
            },
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            ],
            initialValue: watermark[_selectedIndex][index].round().toString(),
          ),
        ]);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          _buildNavigation(),
          const VerticalDivider(thickness: 1, width: 1),
          Flexible(child: _buildGrid()),
        ],
      ),
    );
  }
}
