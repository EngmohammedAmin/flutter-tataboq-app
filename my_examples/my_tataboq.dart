// import 'dart:math';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.indigo,
//         appBar: AppBar(
//           backgroundColor: Colors.indigo[800],
//           title: const Center(
//             child: Text(
//               'تطابق الصور',
//             ),
//           ),
//         ),
//         body: ImagePage(),
//       ),
//     ),
//   );
// }

// class ImagePage extends StatefulWidget {
//   @override
//   _ImagePageState createState() => _ImagePageState();
// }

// class _ImagePageState extends State<ImagePage> {
//   List<String> imagePaths = [
//     'images/image-1.png',
//     'images/image-2.png',
//     'images/image-3.png',
//     'images/image-4.png',
//     'images/image-5.png',
//     'images/image-6.png',
//     'images/image-7.png',
//     'images/image-8.png',
//     'images/image-9.png',
//   ];

//   String firstButtonImagePath = 'images/image-1.png';
//   String secondButtonImagePath = 'images/image-2.png';
//   String thirdButtonImagePath = 'images/image-3.png';

//   void generateRandomImage() {
//     final random = Random();
//     final randomIndex = random.nextInt(imagePaths.length);
//     setState(() {
//       firstButtonImagePath = imagePaths[randomIndex];
//     });

//     final secondRandomIndex = random.nextInt(imagePaths.length);
//     setState(() {
//       secondButtonImagePath = imagePaths[secondRandomIndex];
//     });

//     final thirdRandomIndex = random.nextInt(imagePaths.length);
//     setState(() {
//       thirdButtonImagePath = imagePaths[thirdRandomIndex];
//     });

//     if (firstButtonImagePath == secondButtonImagePath &&
//         firstButtonImagePath == thirdButtonImagePath) {
//       showDialog(
//         context: context,
//         builder: (_) => AlertDialog(
//           title: Text('الصور متطابقة'),
//           content: Text('الصور متطابقة.'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               child: Text('حسنًا'),
//             ),
//           ],
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         const Text(
//           'حاول مرة أخرى',
//           style: TextStyle(
//             fontSize: 30,
//             color: Colors.white,
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(10),
//           child: Row(
//             children: [
//               Expanded(
//                 child: OutlinedButton(
//                   onPressed: () {
//                     generateRandomImage();
//                   },
//                   child: Image.asset(firstButtonImagePath),
//                 ),
//               ),
//               Expanded(
//                 child: OutlinedButton(
//                   onPressed: () {
//                     generateRandomImage();
//                   },
//                   child: Image.asset(secondButtonImagePath),
//                 ),
//               ),
//               Expanded(
//                 child: FilledButton(
//                   onPressed: () {
//                     generateRandomImage();
//                   },
//                   child: Image.asset(thirdButtonImagePath),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
