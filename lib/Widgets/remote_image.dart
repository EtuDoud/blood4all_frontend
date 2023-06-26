import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:shimmer/shimmer.dart';

class RemoteImage extends StatelessWidget {
  final String imgUrl;
  final String errorUrl;
  final double? height;
  final double? width;
  final bool isSquare;
  final double radius;

  const RemoteImage({
    Key? key,
    required this.imgUrl,
    this.errorUrl = "assets/images/user.png",
    this.radius = 0.0,
    this.height,
    this.width,
    this.isSquare = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   var size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: SizedBox(
        height: height ?? size.width / 3.7,
        width: width ?? height ?? size.width / 3.7,
        child: CachedNetworkImage(
          imageUrl: imgUrl,
          fit: BoxFit.cover,
          placeholder: (context, url) => const PostImageSkelton(),
          errorWidget: (context, url, error) => Center(
            child: Image.asset(errorUrl, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

class PostImageSkelton extends StatelessWidget {
  const PostImageSkelton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    Shimmer.fromColors(
      baseColor: Colors.white,
      highlightColor: Colors.grey.shade300,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
      ),
    );
  
  
  }
}
