import 'package:flutter/material.dart';
import 'package:listpage/model.dart';
import 'package:like_button/like_button.dart';

class AnimalPage extends StatefulWidget {
  final Animal animal;

  const AnimalPage({required this.animal, Key? key}) : super(key: key);

  @override
  State<AnimalPage> createState() => _AnimalPageState();
}

class _AnimalPageState extends State<AnimalPage> {
  bool isLiked = false;
  int likeCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.animal.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.animal.imgPath,
              height: 200,
              width: 200,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'It lives in ${widget.animal.location}',
              style: const TextStyle(
                fontSize: 18.0,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            LikeButton(
              size: 30.0,
              isLiked: isLiked,
              likeCount: likeCount,
            ),
          ],
        ),
      ),
    );
  }
}
