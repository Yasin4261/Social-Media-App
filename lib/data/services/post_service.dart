import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/post.dart';

class PostService {
  final String apiUrl = "http://192.168.1.104:8080/posts";

  Future<List<Post>> fetchPosts() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception("Failed to load posts");
    }
  }

  Future<void> likePost(String postId) async {
    final response = await http.post(
      Uri.parse("$apiUrl/$postId/like"),
      headers: {"Content-Type": "application/json"},
    );
    if (response.statusCode != 200) {
      throw Exception("Failed to like post");
    }
  }

  Future<void> commentOnPost(String postId, String comment) async {
    final response = await http.post(
      Uri.parse("$apiUrl/$postId/comment"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({'comment': comment}),
    );
    if (response.statusCode != 200) {
      throw Exception("Failed to add comment");
    }
  }
}
