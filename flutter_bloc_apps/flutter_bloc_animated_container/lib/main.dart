import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_animated_container/bloc/color_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLOC with Flutter Bloc',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => ColorBloc(),
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorBloc _bloc = BlocProvider.of<ColorBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
        centerTitle: true,
      ),
      body: Center(
        child: BlocBuilder<ColorBloc, Color>(
          builder: (context, currentColor) {
            return AnimatedContainer(
              decoration: BoxDecoration(
                color: currentColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              height: 100,
              width: 100,
              duration: Duration(milliseconds: 500),
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              _bloc.add(RedColorEvent());
            },
          ),
          SizedBox(width: 12),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              _bloc.add(GreenColorEvent());
            },
          ),
        ],
      ),
    );
  }
}
