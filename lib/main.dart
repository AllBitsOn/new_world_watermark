import 'package:flutter/material.dart';

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
  List<double> watermark = [0, 0, 0];

  // myicon = ImageIcon(AssetImage('assets/images/m_voidbentheavy_chest.png'));

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
          Expanded(
            child: Center(
                child: Column(
              children: [
                // const Spacer(flex: 2),
                // Flexible(
                //     flex: 2,
                //     child: Text(
                //       watermark[_selectedIndex].toString(),
                //       textAlign: TextAlign.center,
                //     )),
                // Expanded(
                //   child: Slider(
                //     value: watermark[_selectedIndex],
                //     min: 0,
                //     max: 601,
                //     label: watermark[_selectedIndex].toString(),
                //     onChanged: (double value) {
                //       setState(() {
                //         watermark[_selectedIndex] = value.roundToDouble();
                //       });
                //     },
                //   ),
                // ),
                Flexible(
                    child: GridView.count(
                  primary: false,
                  // padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                        width: 50,
                        padding: const EdgeInsets.all(0),
                        child: const Image(
                            image: AssetImage(
                                'assets/images/m_voidbentheavy_chest.png'))),
                    Container(
                        width: 50,
                        padding: const EdgeInsets.all(0),
                        child: const Image(
                            image: AssetImage(
                                'assets/images/m_voidbentheavy_chest.png'))),
                    Container(
                        width: 50,
                        padding: const EdgeInsets.all(0),
                        child: const Image(
                            image: AssetImage(
                                'assets/images/m_voidbentheavy_chest.png'))),
                    Container(
                        width: 50,
                        padding: const EdgeInsets.all(0),
                        child: const Image(
                            image: AssetImage(
                                'assets/images/m_voidbentheavy_chest.png'))),
                    Container(
                        width: 50,
                        padding: const EdgeInsets.all(0),
                        child: const Image(
                            image: AssetImage(
                                'assets/images/m_voidbentheavy_chest.png'))),
                    Container(
                        width: 50,
                        padding: const EdgeInsets.all(0),
                        child: const Image(
                            image: AssetImage(
                                'assets/images/m_voidbentheavy_chest.png'))),
                    Container(
                        width: 50,
                        padding: const EdgeInsets.all(0),
                        child: const Image(
                            image: AssetImage(
                                'assets/images/m_voidbentheavy_chest.png'))),
                    Container(
                        width: 50,
                        padding: const EdgeInsets.all(0),
                        child: const Image(
                            image: AssetImage(
                                'assets/images/m_voidbentheavy_chest.png'))),
                  ],
                ))
              ],
            )),
          )
        ],
      ),
    );
  }
}
