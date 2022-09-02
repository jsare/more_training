import 'package:flutter/material.dart';

import 'posts/view/post_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PostPage(),
    );
  }
}