import 'package:animation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextPage extends StatefulWidget {
  String testText;
  NextPage({super.key, required this.testText});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {

  double imgWidth = 300;
  double imgheight = 300;


  void animateImg(){
    setState(() {
      imgWidth = 400;
      imgheight = 400;
      print("Animate");
    });
  }

  @override
  Widget build(BuildContext context) {

    String _Text = widget.testText;

    return Scaffold(
      appBar: AppBar(
        title: Text("Back"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(_Text),
            ),
            AnimatedContainer(
              width: imgWidth,
              height: imgheight,
              // color: Colors.blue,
              duration: const Duration(seconds: 2),
              curve: Curves.elasticInOut,
              child: Image.asset('assets/images/parrot.jpg'),
              // child: Text("TEXT"),
            ),
            ElevatedButton(
              onPressed: animateImg,
              child: Text("Animate"),
            )
          ],
        ),
      ),
    );
  }
}
