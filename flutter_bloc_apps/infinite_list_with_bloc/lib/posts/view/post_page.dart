import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_list_with_bloc/posts/view/post_list.dart';
import 'package:http/http.dart' as http;

import '../bloc/post_bloc.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PostBloc(httpClient: http.Client())..add(PostFetched()),
      child: const PostList(),
    );
  }
}
