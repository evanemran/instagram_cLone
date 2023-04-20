import 'package:flutter/material.dart';

class OptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 16, 0, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 110),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(28),
                          child: Image.asset("assets/images/stark.jpg", width: 28, height: 28, fit: BoxFit.cover,),
                        ),
                      ),
                      const SizedBox(width: 6),
                      const Text('evanemran', style: TextStyle(color: Colors.white),),
                      const SizedBox(width: 10),
                      const Icon(Icons.verified, size: 15, color: Colors.white,),
                      const SizedBox(width: 6),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Follow',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 6),
                  const Text('This is a test reel 💙❤💛 ..', style: TextStyle(
                    color: Colors.white,
                  )),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Icon(
                        Icons.music_note,
                        size: 15,
                        color: Colors.white60,
                      ),
                      Text('Original Audio - some music track--', style: TextStyle(
                        color: Colors.white60,
                      )),
                    ],
                  ),
                ],
              ),
              Padding(padding: const EdgeInsets.only(right: 16),child: Column(
                children: [
                  const Icon(Icons.favorite_outline, color: Colors.white,),
                  const Text('601k', style: TextStyle(
                    color: Colors.white,
                  )),
                  const SizedBox(height: 20),
                  const Icon(Icons.comment_rounded, color: Colors.white,),
                  const Text('1123', style: TextStyle(
                    color: Colors.white,
                  )),
                  const SizedBox(height: 20),
                  Transform(
                    transform: Matrix4.rotationZ(5.8),
                    child: const Icon(Icons.send, color: Colors.white,),
                  ),
                  const SizedBox(height: 50),
                  const Icon(Icons.more_vert, color: Colors.white,),
                ],
              ),),
            ],
          ),
        ],
      ),
    );
  }
}