// import 'package:flutter/material.dart';
// import 'package:flutter_reaction_button/flutter_reaction_button.dart';
// import 'package:social_feed/util/images.dart';
//
// final List<Reaction<String>> flagsReactions = [
//   Reaction<String>(
//     value: 'en',
//     previewIcon: _buildFlagPreviewIcon(
//       AllImages.angry,
//       'English',
//     ),
//     icon: _buildFlagIcon(
//       AllImages.love_like,
//     ),
//   ),
//   Reaction<String>(
//     value: 'ar',
//     previewIcon: _buildFlagPreviewIcon(
//       AllImages.angry,
//       'Arabic',
//     ),
//     icon: _buildFlagIcon(
//       AllImages.angry,
//     ),
//   ),
//   Reaction<String>(
//     value: 'gr',
//     previewIcon: _buildFlagPreviewIcon(
//       AllImages.angry,
//       'German',
//     ),
//     icon: _buildFlagIcon(
//       AllImages.angry,
//     ),
//   ),
//   Reaction<String>(
//     value: 'sp',
//     previewIcon: _buildFlagPreviewIcon(
//       AllImages.angry,
//       'Spanish',
//     ),
//     icon: _buildFlagIcon(
//       AllImages.angry,
//     ),
//   ),
//   Reaction<String>(
//     value: 'ch',
//     previewIcon: _buildFlagPreviewIcon(
//       AllImages.angry,
//       'Chinese',
//     ),
//     icon: _buildFlagIcon(
//       AllImages.angry,
//     ),
//   ),
// ];
//
//
//
// final List<Reaction<String>> reactions = [
//   Reaction<String>(
//     value: 'Happy',
//     title: _buildEmojiTitle(
//       'Happy',
//     ),
//     previewIcon: _buildEmojiPreviewIcon(
//       AllImages.angry,
//     ),
//     icon: _buildReactionsIcon(
//       AllImages.angry,
//       const Text(
//         'Happy',
//         style: TextStyle(
//           color: Color(0XFF3b5998),
//         ),
//       ),
//     ),
//   ),
//   Reaction<String>(
//     value: 'Angry',
//     title: _buildEmojiTitle(
//       'Angry',
//     ),
//     previewIcon: _buildEmojiPreviewIcon(
//       AllImages.angry,
//     ),
//     icon: _buildReactionsIcon(
//       AllImages.angry,
//       const Text(
//         'Angry',
//         style: TextStyle(
//           color: Color(0XFFed5168),
//         ),
//       ),
//     ),
//   ),
//   Reaction<String>(
//     value: 'In love',
//     title: _buildEmojiTitle(
//       'In love',
//     ),
//     previewIcon: _buildEmojiPreviewIcon(
//       AllImages.angry,
//     ),
//     icon: _buildReactionsIcon(
//       AllImages.angry,
//       const Text(
//         'In love',
//         style: TextStyle(
//           color: Color(0XFFffda6b),
//         ),
//       ),
//     ),
//   ),
//   Reaction<String>(
//     value: 'Sad',
//     title: _buildEmojiTitle(
//       'Sad',
//     ),
//     previewIcon: _buildEmojiPreviewIcon(
//       AllImages.angry,
//     ),
//     icon: _buildReactionsIcon(
//       AllImages.angry,
//       const Text(
//         'Sad',
//         style: TextStyle(
//           color: Color(0XFFffda6b),
//         ),
//       ),
//     ),
//   ),
//   Reaction<String>(
//     value: 'Surprised',
//     title: _buildEmojiTitle(
//       'Surprised',
//     ),
//     previewIcon: _buildEmojiPreviewIcon(
//       AllImages.angry,
//     ),
//     icon: _buildReactionsIcon(
//       AllImages.angry,
//       const Text(
//         'Surprised',
//         style: TextStyle(
//           color: Color(0XFFffda6b),
//         ),
//       ),
//     ),
//   ),
//   Reaction<String>(
//     value: 'Mad',
//     title: _buildEmojiTitle(
//       'Mad',
//     ),
//     previewIcon: _buildEmojiPreviewIcon(
//       AllImages.angry,
//     ),
//     icon: _buildReactionsIcon(
//       AllImages.angry,
//       const Text(
//         'Mad',
//         style: TextStyle(
//           color: Color(0XFFf05766),
//         ),
//       ),
//     ),
//   ),
// ];
//
// Widget _buildFlagPreviewIcon(String path, String text) {
//   return Column(
//     mainAxisSize: MainAxisSize.min,
//     children: [
//       Text(
//         text,
//         style: const TextStyle(
//           fontSize: 10,
//           fontWeight: FontWeight.w300,
//           color: Colors.white,
//         ),
//       ),
//       const SizedBox(height: 7.5),
//       Image.asset(path, height: 30),
//     ],
//   );
// }
//
// Widget _buildEmojiTitle(String title) {
//   return Container(
//     margin: const EdgeInsets.only(bottom: 8),
//     padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//     decoration: BoxDecoration(
//       color: Colors.black.withOpacity(.75),
//       borderRadius: BorderRadius.circular(15),
//     ),
//     child: Text(
//       title,
//       style: const TextStyle(
//         color: Colors.white,
//         fontSize: 8,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   );
// }
//
// Widget _buildEmojiPreviewIcon(String path) {
//   return Image.asset(path, height: 24, width: 24,);
// }
//
// Widget _buildFlagIcon(String path) {
//   return Image.asset(path, height: 24,width: 24,);
// }
//
// Widget _buildReactionsIcon(String path, Text text) {
//   return Container(
//     color: Colors.transparent,
//     child: Row(
//       children: <Widget>[
//         Image.asset(path, height: 20, width: 24,),
//         const SizedBox(width: 5),
//         text,
//       ],
//     ),
//   );
// }