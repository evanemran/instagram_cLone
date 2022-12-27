import 'package:flutter/cupertino.dart';

class PhotosWidget extends StatefulWidget {
  const PhotosWidget({Key? key}) : super(key: key);

  @override
  State<PhotosWidget> createState() => _PhotosWidgetState();
}

class _PhotosWidgetState extends State<PhotosWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 2.0,
      mainAxisSpacing: 2.0,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: List.generate(20, (index) {
        return Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/stark.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius:
            BorderRadius.all(Radius.circular(0.0),),
          ),
        );
      }),
    );
  }
}
