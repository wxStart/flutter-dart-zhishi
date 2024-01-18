import 'package:flutter/material.dart';
import 'dart:math';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text('动画'),
        ),
        body: HeroDemo(),
      ),
    );
  }
}

class HeroDemo extends StatelessWidget {
  const HeroDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: GridView.extent(
        maxCrossAxisExtent: 300,
        mainAxisSpacing: 20,
        children: List.generate(30, (index) {
          String imageUrl = "https://picsum.photos/id/${index}/300/400";

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return ImageDetail(imageUrl);
                }),
              );
            },
            child: Hero(
              tag: imageUrl,
              child: Image.network(imageUrl),
            ),
          );
        }),
      ),
    );
  }
}

// 图片详情页
class ImageDetail extends StatelessWidget {
  final String imageUrl;
  const ImageDetail(
    this.imageUrl, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(
            tag: imageUrl,
            child: Image.network(
              imageUrl,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
