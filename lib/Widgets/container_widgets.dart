import 'package:flutter/material.dart';
import 'package:photo_gallery/Screens/each_photo_screen.dart';

class ContainerWidgets extends StatelessWidget {
  const ContainerWidgets({
    required this.imageLinks,
    required this.imageCategory,
    required this.idx,
    super.key,
  });

  final String imageLinks;
  final String imageCategory;
  final int idx;

  ImageProvider fetchThisImage() {
    return NetworkImage(imageLinks);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EachPhotoScreen(
                pageName: imageCategory,
                pageImage: fetchThisImage(),
                idx: idx,
              ),
            ),
          );
        },
        child: Container(
          height: 180,
          width: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: DecorationImage(
                image: fetchThisImage(),
                fit: BoxFit.cover,
              )),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
              child: Text(
                imageCategory,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
