import 'package:blood4all/Widgets/remote_image.dart';
import 'package:flutter/material.dart';


class ProfileWidget extends StatelessWidget {
  final String imagePath;
  final VoidCallback onClicked;
  const ProfileWidget({
    super.key,
    required this.imagePath,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          ClipOval(
            child: Material(
              color: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60.0),
                child: RemoteImage(imgUrl: imagePath, height: 130),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 4,
            child: InkWell(
              onTap: onClicked,
              child: ClipOval(
                child: Container(
                  decoration: const BoxDecoration(color: Color(0xff153565)),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.photo_camera_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
