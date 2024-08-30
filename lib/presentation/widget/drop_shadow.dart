// import 'package:flutter/material.dart';

// class DropShadow extends StatelessWidget {
//   const DropShadow({
//     super.key,
//     required this.title,
//     required this.height,
//     required this.width,
//     required this.offset,
//   });
//   final String title;
//   final double height;
//   final double width;
//   final double offset;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 15),
//       child: Container(
//         width: width,
//         height: height,
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(100),
//           color: const Color.fromRGBO(25, 26, 29, 1),
//           boxShadow: [
//             BoxShadow(
//               color: const Color.fromRGBO(41, 42, 47, 1),
//               offset: Offset(-offset, -offset),
//               blurRadius: 10,
//               spreadRadius: 0,
//             ),
//             BoxShadow(
//               color: const Color.fromRGBO(0, 0, 0, 1),
//               offset: Offset(offset, offset),
//               blurRadius: 10,
//               spreadRadius: 0,
//             ),
//           ],
//         ),
//         child: Text(
//           title,
//           style: const TextStyle(
//             fontSize: 18,
//             color: Colors.grey,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }
