import 'package:flutter/material.dart';
import '../../data/models/post.dart';
import '../../view_models/post_view_model.dart';
import 'comment_section.dart';
import 'like_button.dart';
import '../../core/constants/text_styles.dart';
import 'package:provider/provider.dart';

class PostItem extends StatelessWidget {
  final Post post;

  const PostItem({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final postViewModel = Provider.of<PostViewModel>(context, listen: false);

    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              post.content,
              style: Constants.bodyTextStyle,
            ),
            const SizedBox(height: 8),
            LikeButton(
              isLiked: post.isLiked,
              likes: post.likes,
              onPressed: () => postViewModel.likePost(post),
            ),
            CommentSection(comments: post.comments),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                decoration: const InputDecoration(hintText: "Add a comment..."),
                onSubmitted: (text) {
                  postViewModel.addComment(post, text);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
