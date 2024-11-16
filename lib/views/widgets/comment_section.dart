import 'package:flutter/material.dart';
import '../../core/constants/text_styles.dart';

class CommentSection extends StatelessWidget {
  final List<String> comments;  

  const CommentSection({Key? key, required this.comments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: comments.map((comment) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Text(comment, style: Constants.commentTextStyle),
        )).toList(),
    );
  }
}