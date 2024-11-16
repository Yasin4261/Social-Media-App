// lib/view_models/post_view_model.dart
import 'package:flutter/material.dart';
import '../data/models/post.dart';
import '../data/services/post_service.dart';

class PostViewModel extends ChangeNotifier {
  final PostService postService = PostService();
  List<Post> posts = [];

  Future<void> loadPosts() async {
    posts = await postService.fetchPosts();
    notifyListeners();
  }

  Future<void> likePost(Post post) async {
    post.isLiked = !post.isLiked;
    post.likes += post.isLiked ? 1 : -1;
    notifyListeners();
    await postService.likePost(post.id);
  }

  Future<void> addComment(Post post, String comment) async {
    post.comments.add(comment);
    notifyListeners();
    await postService.commentOnPost(post.id, comment);
  }
}
