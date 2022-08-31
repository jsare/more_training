import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    CounterCubit bloc = context.read<CounterCubit>();
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter', style: textTheme.headline5),
        centerTitle: true,
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterCubitInitial>(
            builder: (context, state) {
          return Text('${state.count}', style: textTheme.headline2);
        }),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (() {
              bloc.increment();
              // return context.read<CounterCubit>().increment();
            }),
            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            onPressed: (() {
              bloc.decrement();
              // return context.read<CounterCubit>().decrement();
            }),
            key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
