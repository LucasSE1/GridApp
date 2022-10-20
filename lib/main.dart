import 'package:flutter/material.dart';

void main() {
  runApp(const GridViewApp());
}

class GridViewApp extends StatelessWidget {
  const GridViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GridView App",
      theme: ThemeData(primaryColor: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("GridView App"),
        ),
        body: GridView.extent(
          maxCrossAxisExtent: 150,
          padding: const EdgeInsets.all(5.0),
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          children: _gridViewFunction(),
        ),
      ),
    );
  }

  List<Widget> _gridViewFunction() {
    // pic0, pic1
    List<String> imagesLink = [
      "assets/images/pic1.jpg",
      "assets/images/pic2.jpg",
      "assets/images/pic3.jpg",
      "assets/images/pic4.jpg",
      "assets/images/pic5.jpg",
      "assets/images/pic6.jpg",
      "assets/images/pic7.jpg",
      "assets/images/pic8.jpg",
      "assets/images/pic9.jpg",
      "assets/images/pic10.jpg",
      "assets/images/pic11.jpg",
      "assets/images/pic12.jpg"
    ];
    return List.generate(
        imagesLink.length,
        (index) => Container(
              clipBehavior: Clip.none,
              child:
                  Image(image: AssetImage(imagesLink[index]), fit: BoxFit.fill),
            ));
  }
}
