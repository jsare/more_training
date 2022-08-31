import 'package:flutter/material.dart';
import 'package:switch_themes_bloc/ui/preference/preference_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PreferencePage()));
            },
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: Center(
        child: Text(
          "Home Page",
          style: Theme.of(context).textTheme.displaySmall,
        ),
      ),
    );
  }
}
