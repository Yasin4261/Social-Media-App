class Post {
  final String id;
  final String userId;
  final String content;
  int likes;
  bool isLiked;
  List<String> comments;

  Post({
    required this.id,
    required this.userId,
    required this.content,
    this.likes = 0,
    this.isLiked = false,
    this.comments = const [],
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      userId: json['userId'],
      content: json['content'],
      likes: json['likes'] ?? 0,
      isLiked: json['isLiked'] ?? false,
      comments: List<String>.from(json['comments'] ?? []),
    );
  }
}
