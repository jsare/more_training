import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: const CardsWidget(),
    );
  }
}

class CardsWidget extends StatefulWidget {
  const CardsWidget({Key? key}) : super(key: key);

  @override
  State<CardsWidget> createState() => _CardsWidgetState();
}

final page = [
  'FlutterRatingBarPage',
  'LinearGradientPage',
  'NavigationRalePage',
];

class _CardsWidgetState extends State<CardsWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          elevation: 0,
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/${page[index]}');
            },
            child: const SizedBox(
              width: 150,
              height: 100,
              child: Center(
                child: Text('Flutter widget'),
              ),
            ),
          ),
        );
      },
      itemCount: 5,
    );
  }
}
