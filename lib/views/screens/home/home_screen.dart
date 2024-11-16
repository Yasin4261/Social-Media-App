import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../view_models/post_view_model.dart';
import '../../widgets/post_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final postViewModel = Provider.of<PostViewModel>(context, listen: true);

    return FutureBuilder(
        future: postViewModel.loadPosts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            print("hello load ;P");
            postViewModel.loadPosts();
            return const Center(child: CircularProgressIndicator());
          }
          return Consumer<PostViewModel>(builder: (context, viewModel, child) {
            return ListView.builder(
                itemCount: viewModel.posts.length,
                itemBuilder: (context, index) {
                  final post = viewModel.posts[index];
                  print("hello post :)");
                  return PostItem(post: post);
                });
          });
        });
  }
}


/**
 * Text(
        'Ana Sayfa',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
 */