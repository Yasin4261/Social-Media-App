import 'package:flutter/material.dart';
import '../../core/constants/color_constants.dart';

class LikeButton extends StatelessWidget {
  final bool isLiked;
  final int likes;
  final VoidCallback onPressed;

  const LikeButton({
    Key? key,
    required this.isLiked,
    required this.likes,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: Icon(isLiked ? Icons.favorite : Icons.favorite_border,
              color: isLiked ? Colors.red : Colors.grey),
        ),
        Text(
          "$likes likes",
          style: Theme.of(context).textTheme.bodySmall,
        )
      ],
    );
  }
}
