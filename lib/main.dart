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

// class _HomeWidgetState extends State<HomeWidget> {
//   int _selectedIndex = 0;
//   List<List<double>> watermark = [
//     [0, 0, 0, 0, 0, 0, 0, 0],
//     [0, 0, 0, 0, 0, 0, 0, 0],
//     [0, 0, 0, 0, 0, 0, 0, 0],
//   ];

//   List<String> images = [
//     'assets/images/m_voidbentheavy_head.png',
//     'assets/images/m_voidbentheavy_chest.png',
//     'assets/images/m_voidbentheavy_gloves.png',
//     'assets/images/m_voidbentheavy_legs.png',
//     'assets/images/m_voidbentheavy_feet.png',
//     'assets/images/corruptedamulet13.png',
//     'assets/images/corruptedearring04.png',
//     'assets/images/corruptedring25.png',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: <Widget>[
//           NavigationRail(
//             selectedIconTheme: const IconThemeData(color: null),
//             unselectedIconTheme: const IconThemeData(color: null),
//             selectedIndex: _selectedIndex,
//             onDestinationSelected: (int index) {
//               setState(() {
//                 _selectedIndex = index;
//               });
//             },
//             labelType: NavigationRailLabelType.selected,
//             destinations: const <NavigationRailDestination>[
//               NavigationRailDestination(
//                 icon: ImageIcon(
//                     AssetImage('assets/images/m_voidbentheavy_chest.png')),
//                 // selectedIcon: Image(image: image),
//                 label: Text('First'),
//               ),
//               NavigationRailDestination(
//                 icon: Icon(Icons.bookmark_border),
//                 selectedIcon: Icon(Icons.book),
//                 label: Text('Second'),
//               ),
//               NavigationRailDestination(
//                 icon: Icon(Icons.star_border),
//                 selectedIcon: Icon(Icons.star),
//                 label: Text('Third'),
//               ),
//             ],
//           ),
//           const VerticalDivider(thickness: 1, width: 1),
//           Flexible(
//             child: GridView.builder(
//               itemCount: images.length,
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 5.0,
//                 mainAxisSpacing: 5.0,
//               ),
//               itemBuilder: (BuildContext context, int index) {
//                 return Column(children: [
//                   Image.asset(images[index]),
//                   TextFormField(
//                     controller: null,
//                     keyboardType: TextInputType.number,
//                     onChanged: (text) {
//                       log(text);
//                       // watermark[_selectedIndex][index] = double.parse(text);
//                     },
//                     inputFormatters: <TextInputFormatter>[
//                       FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
//                     ],
//                     initialValue:
//                         watermark[_selectedIndex][index].round().toString(),
//                   ),
//                 ]);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
class _HomeWidgetState extends State<HomeWidget> {
  int _selectedIndex = 0;
  List<List<double>> watermark = [
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
  ];

  // List<String> images = [
  //   'assets/images/m_voidbentheavy_head.png',
  //   'assets/images/m_voidbentheavy_chest.png',
  //   'assets/images/m_voidbentheavy_gloves.png',
  //   'assets/images/m_voidbentheavy_legs.png',
  //   'assets/images/m_voidbentheavy_feet.png',
  //   'assets/images/corruptedamulet13.png',
  //   'assets/images/corruptedearring04.png',
  //   'assets/images/corruptedring25.png',
  // ];

  // List<Container> images = [
  //   Container(child: Image.asset('assets/images/m_voidbentheavy_head.png')),
  //   Container(child: Image.asset('assets/images/m_voidbentheavy_chest.png')),
  //   Container(child: Image.asset('assets/images/m_voidbentheavy_gloves.png')),
  //   Container(child: Image.asset('assets/images/m_voidbentheavy_legs.png')),
  //   Container(child: Image.asset('assets/images/m_voidbentheavy_feet.png')),
  //   Container(child: Image.asset('assets/images/corruptedamulet13.png')),
  //   Container(child: Image.asset('assets/images/corruptedearring04.png')),
  //   Container(child: Image.asset('assets/images/corruptedring25.png')),
  // ];

  Widget _buildList() {
    return ListView(
      shrinkWrap: true,
      children: [
        Container(child: Image.asset('assets/images/m_voidbentheavy_head.png')),
        Container(
            child: Image.asset('assets/images/m_voidbentheavy_chest.png')),
        Container(
            child: Image.asset('assets/images/m_voidbentheavy_gloves.png')),
        Container(child: Image.asset('assets/images/m_voidbentheavy_legs.png')),
        Container(child: Image.asset('assets/images/m_voidbentheavy_feet.png')),
        Container(child: Image.asset('assets/images/corruptedamulet13.png')),
        Container(child: Image.asset('assets/images/corruptedearring04.png')),
        Container(child: Image.asset('assets/images/corruptedring25.png')),
      ],
    );
  }

  // Widget _buildGrid() => GridView.count(
  //       // maxCrossAxisExtent: 150,
  //       padding: const EdgeInsets.all(4),
  //       mainAxisSpacing: 2,
  //       crossAxisSpacing: 2,
  //       crossAxisCount: 2,
  //       children: images,
  //       scrollDirection: Axis.vertical,
  //       shrinkWrap: false,
  //     );

  // Widget _listView() => ListView(
  //       children: images,
  //     );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
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
                icon: ImageIcon(
                    AssetImage('assets/images/m_voidbentheavy_chest.png')),
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
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(child: SizedBox(child: _buildList(), height: 400,))
        ],
      ),
    );
  }
}
