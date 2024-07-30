import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:photo_gallery/Widgets/container_widgets.dart';
import 'package:photo_gallery/Data/image_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceOrientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Photo Gallery")),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        actions: const [
          Icon(
            CupertinoIcons.ellipsis_vertical,
            color: Colors.white,
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: deviceOrientation == Orientation.portrait
          ? GridView.builder(
              itemCount: 8,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return ContainerWidgets(
                  imageLinks: ImageData.myImageLinks[index],
                  imageCategory: ImageData.imageCategory[index],
                  idx: index,
                );
              },
            )
          : GridView.builder(
              itemCount: ImageData.imageCategory.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemBuilder: (context, index) {
                return ContainerWidgets(
                  imageLinks: ImageData.myImageLinks[index],
                  imageCategory: ImageData.imageCategory[index],
                  idx: index,
                );
              },
            ),
    );
  }
}
