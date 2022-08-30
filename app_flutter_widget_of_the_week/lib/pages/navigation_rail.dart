import 'package:flutter/material.dart';

class NavigationRalePage extends StatefulWidget {
  const NavigationRalePage({Key? key}) : super(key: key);

  @override
  State<NavigationRalePage> createState() => _NavigationRalePageState();
}

class _NavigationRalePageState extends State<NavigationRalePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          NavigationRail(
            leading: Icon(Icons.lock),
            trailing: Icon(Icons.local_activity),
            elevation: 1,
            groupAlignment: 1,
            minWidth: 72,
            useIndicator: true,
            backgroundColor: Colors.indigo.shade50,
            indicatorColor: Colors.indigo.shade100,
            unselectedIconTheme: IconThemeData(color: Colors.blueGrey),
            unselectedLabelTextStyle: TextStyle(color: Colors.blueGrey),
            labelType: NavigationRailLabelType.selected,
            selectedIconTheme: IconThemeData(color: Colors.indigo),
            selectedLabelTextStyle: TextStyle(color: Colors.indigo),
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.house_outlined),
                label: Text('Home'),
                selectedIcon: Icon(Icons.house),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.star_border_outlined),
                label: Text('Favorite'),
                selectedIcon: Icon(Icons.star),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.account_circle_outlined),
                label: Text('Profile'),
                selectedIcon: Icon(Icons.account_circle),
              ),
            ],
            selectedIndex: _selectedIndex,
            onDestinationSelected: changeDestination,
          ),
          const VerticalDivider(thickness: 1, width: 1, color: Colors.cyan),
          Container(), // MainContent - Main field my app
        ],
      ),
    );
  }

  changeDestination(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

/*
Bottom Navigation Bar подходит для приложений с ограниченной шириной.
Он больше подходит для Web или Desktop.
*/