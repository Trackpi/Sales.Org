import 'package:flutter/material.dart';

class TabCard extends StatelessWidget {
  const TabCard(
      {super.key,
      this.isVideo = false,
      required this.image,
      required this.count});
  final bool isVideo;
  final String image, count;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Container
        Container(
          height: isVideo ? 193 : null,
          width: isVideo ? double.infinity : null,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover, // Scales image to fit container
              image: NetworkImage(
                image,
              ),
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10), // Rounded corners
          ),
          padding: const EdgeInsets.all(8.0), // Padding inside container
        ),
        // Save Icon at the Top Right
        Positioned(
          top: isVideo ? 8 : 2,
          right: isVideo ? 8 : 5,
          child: IconButton(
            onPressed: () {
              // Save action goes here
            },
            icon: Icon(
              Icons.bookmark,
              color: Color(0xffFFB300), // Icon color
            ),
          ),
        ),
        // Eye Icon at the Bottom Right
        Positioned(
          bottom: 10,
          right: isVideo ? 8 : 10,
          child: Row(
            children: [
              Text(
                count, // View count text
                style: TextStyle(
                  color: Color(0xffFFB300), // Text color
                  fontSize: 13,
                ),
              ),
              Icon(
                Icons.remove_red_eye_outlined,
                size: 13, // Icon size
                color: Color(0xffFFB300), // Icon color
              ),
            ],
          ),
        ),
      ],
    );
  }
}
