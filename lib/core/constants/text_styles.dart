// lib/core/constants/text_styles.dart
import 'package:flutter/material.dart';
import 'color_constants.dart'; // Renkleri içe aktar

class Constants {
  // Ana metin stili
  static const TextStyle bodyTextStyle = TextStyle(
    color: AppColors.textColor, // Metin rengi
    fontSize: 16, // Font boyutu
    fontWeight: FontWeight.normal, // Font kalınlığı
  );

  // Beğenme metin stili
  static const TextStyle likeTextStyle = TextStyle(
    color: AppColors.likeColor, // Beğenme rengi
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  // Başlık metin stili
  static const TextStyle headerTextStyle = TextStyle(
    color: AppColors.primaryColor, // Başlık rengi
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  // Yorum metin stili
  static const TextStyle commentTextStyle = TextStyle(
    color: AppColors.secondaryTextColor, // Yorum metni rengi
    fontSize: 14, // Küçük font boyutu
    fontWeight: FontWeight.normal,
    fontStyle: FontStyle.italic, // Eğik yazı stili
  );
}
