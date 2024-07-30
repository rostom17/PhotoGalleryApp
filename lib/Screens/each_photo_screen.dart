import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:photo_gallery/Data/image_data.dart';

class EachPhotoScreen extends StatelessWidget {
  const EachPhotoScreen({
    required this.pageName,
    required this.pageImage,
    required this.idx,
    super.key,
  });

  final String pageName;
  final ImageProvider pageImage;
  final int idx;

  @override
  Widget build(BuildContext context) {
    var screenOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(pageName)),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
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
      body: screenOrientation == Orientation.portrait
          ? forPortraitMode()
          : forLandscapeMode(context),
    );
  }

  Padding forLandscapeMode(context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 298,
                  width: 372,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    image: DecorationImage(
                      image: pageImage,
                      fit: BoxFit.cover,
                    )
                  ),

                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ImageData.titleDescription[idx],
                        style: const TextStyle(fontSize: 30),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        ImageData.subtitleDescription,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: ElevatedButton(
                          onPressed: () {},

                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal:
                                    MediaQuery.of(context).size.width * .22),
                          ),
                          child: const Text("See More"),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Suggestion",
                        style: TextStyle(color: Colors.green, fontSize: 30),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildContainer('Dawn', ImageData.dawnImageLink),
                          buildContainer('Leaves', ImageData.leavesImageLink),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding forPortraitMode() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 325,
            width: 390,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              image: DecorationImage(
                image: pageImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ImageData.titleDescription[idx],
                  style: const TextStyle(fontSize: 28),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  ImageData.subtitleDescription,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('See More'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Suggestions",
              style: TextStyle(
                color: Colors.green,
                fontSize: 23,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildContainer('Dawn', ImageData.dawnImageLink),
              buildContainer('Leaves', ImageData.leavesImageLink),
            ],
          )
        ],
      ),
    );
  }

  Container buildContainer(String imageTitle, String imageLink) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        image: DecorationImage(
          image: NetworkImage(imageLink),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
          child: Text(
            imageTitle,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
