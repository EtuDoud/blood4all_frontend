import 'package:blood4all/Screens/utils/constants.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';


class SendMediaFileModal extends StatelessWidget {
  SendMediaFileModal({super.key});

  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff737373),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            
            const SizedBox(height: 16),
            Center(
              child: Container(
                height: 4,
                width: 50,
                color: Colors.grey.shade200,
              ),
            ),
            const SizedBox(height: 10),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: ListTile(
                    onTap: () async {
                      _picker.pickImage(source: ImageSource.camera).then(
                        (file) {
                          Navigator.of(context).pop(file);
                        },
                      );
                    },
                    leading: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: kPrimaryColor.withOpacity(.5),
                      ),
                      height: 50,
                      width: 50,
                      child: const Icon(
                        Icons.photo_camera_outlined,
                        size: 25,
                        color: kBackgroundColor,
                      ),
                    ),
                    title: const Text(
                      "Caméra",
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: ListTile(
                    onTap: () async {
                      _picker.pickImage(source: ImageSource.gallery).then(
                        (file) {
                          Navigator.of(context).pop(file);
                        },
                      );
                    },
                    leading: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: kPrimaryColor.withOpacity(.5),
                      ),
                      height: 50,
                      width: 50,
                      child: const Icon(
                        Icons.photo_outlined,
                        size: 25,
                        color: kBackgroundColor,
                      ),
                    ),
                    title: const Text(
                      "Gallerie",
                      style: TextStyle(
                        color: kTextColor,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
