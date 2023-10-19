// import 'package:flutter/material.dart';
// import 'package:flutter_reaction_button/flutter_reaction_button.dart';
// import 'package:social_feed/util/images.dart';
// import 'package:social_feed/view/fb_react/data.dart';
// import 'package:social_feed/view/fb_react/image_screen.dart';
// import 'package:social_feed/view/fb_react/post.dart';
//
//
// class MyAppScreen extends StatelessWidget {
//   const MyAppScreen({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       appBar: AppBar(
//         title: const Text('Flutter Reaction Button'),
//         actions: [
//           Builder(
//             builder: (context) {
//               return SizedBox.square(
//                 dimension: 30,
//                 child: ReactionButton<String>(
//                   onReactionChanged: (reaction) {},
//                   reactions: flagsReactions,
//
//                 ),
//               );
//             },
//           ),
//           const SizedBox(width: 10),
//         ],
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.symmetric(vertical: 5),
//         child: Column(
//           children: [
//             PostWidget(
//               title: 'image 1',
//               imgPath: AllImages.Rectangle3,
//               reactions: reactions,
//             ),
//
//             PostWidget(
//               title: 'image 2',
//               imgPath: AllImages.Rectangle3,
//               reactions: reactions,
//             ),
//
//             PostWidget(
//               title: 'image 3',
//               imgPath: AllImages.Rectangle3,
//               reactions: reactions,
//             ),
//
//             PostWidget(
//               title: 'image 4',
//               imgPath: AllImages.Rectangle3,
//               reactions: reactions,
//             ),
//
//             PostWidget(
//               title: 'image 5',
//               imgPath: AllImages.Rectangle3,
//               reactions: reactions,
//             ),
//
//             const SafeArea(
//               child: SizedBox(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }