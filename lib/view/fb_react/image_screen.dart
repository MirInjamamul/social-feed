// import 'package:flutter/material.dart';
// import 'package:flutter_reaction_button/flutter_reaction_button.dart';
//
// class ImageWidget extends StatefulWidget {
//   const ImageWidget({
//     Key? key,
//     required this.imgPath,
//     required this.reactions,
//   }) : super(key: key);
//
//   final String imgPath;
//   final List<Reaction<String>> reactions;
//
//   @override
//   State<ImageWidget> createState() => _ImageWidgetState();
// }
//
// class _ImageWidgetState extends State<ImageWidget> {
//   String? _selectedReaction;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(
//         horizontal: 10,
//         vertical: 5,
//       ),
//       child:  Container(
//         height: 100,
//         width: 100,
//         decoration: BoxDecoration(
//           color: Colors.black.withOpacity(.35),
//           shape: BoxShape.circle,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(.3),
//               offset: const Offset(0, 3),
//               blurRadius: 3,
//             )
//           ],
//         ),
//         child: _selectedReaction != null
//             ? Text(_selectedReaction!)
//             : null,
//       ),
//     );
//   }
// }