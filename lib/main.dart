import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          backgroundColor: Colors.indigo[800],
          title: const Center(
            child: Text('تطابق الصور'),
          ),
        ),
        body: ImagePage(),
      ),
    ),
  );
}

class ImagePage extends StatefulWidget {
  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  var leftImageNumber = 1;
  var rightImageNumber = 2;
  int clickCounter = 0;
  String success = 'ألف مبروك لقد نجحت';
  String faile = 'لقد فشلت';
  void updateImagesNumber() {
    setState(() {
      var random = Random();
      leftImageNumber = random.nextInt(8) + 1;
      rightImageNumber = random.nextInt(8) + 1;
      clickCounter++;
    });
    if (leftImageNumber == rightImageNumber && clickCounter < 5) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Center(
            child: Text(' ألف مبروك لقد نجحت'),
          ),
          content: Image.asset('images/image-$rightImageNumber.png'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('حسنًا'),
            ),
          ],
        ),
      );
    }
  }

  void failed() {
    setState(() {
      clickCounter = 0;
      leftImageNumber = 1;
      rightImageNumber = 2;
    });

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Center(
          child: Text('  ياعزيزي فشلت'),
        ),
        content: Image.asset('images/fail.png'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('من جديد'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNumber == rightImageNumber
              ? success
              : 'حاول مرة أخرى (${clickCounter.toString()})',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: clickCounter < 5 ? updateImagesNumber : failed,
                child: Image.asset('images/image-$leftImageNumber.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: clickCounter < 5 ? updateImagesNumber : failed,
                // updateImagesNumber();

                child: Image.asset('images/image-$rightImageNumber.png'),
              ),
            ),
          ],
        ),
        
      ],
    );
  }
}
