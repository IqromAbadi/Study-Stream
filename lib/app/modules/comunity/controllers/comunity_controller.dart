import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ComunityController extends GetxController {
  final selectedValueIndex = 0.obs;

  // DATA CONTENT COMUNITY
  final textComunity = [
    "Web Design",
    "App Design",
    "Graphic Design",
    "Game Dev",
    "Machine Learning",
    "Cyber Security",
    "Flutter",
  ];

  // Data images content continue watching
  final List<DecorationImage> imagesContentComunity = [
    const DecorationImage(
      image: AssetImage("assets/images/comunity/webdesign.jpg"),
      fit: BoxFit.cover,
    ),
    const DecorationImage(
      image: AssetImage("assets/images/comunity/appdesign.jpg"),
      fit: BoxFit.cover,
    ),
    const DecorationImage(
      image: AssetImage("assets/images/comunity/graphicdesign.jpg"),
      fit: BoxFit.cover,
    ),
    const DecorationImage(
      image: AssetImage("assets/images/comunity/gamedev.png"),
      fit: BoxFit.cover,
    ),
    const DecorationImage(
      image: AssetImage("assets/images/comunity/machinelearning.jpg"),
      fit: BoxFit.cover,
    ),
    const DecorationImage(
      image: AssetImage("assets/images/comunity/flutter.png"),
      fit: BoxFit.cover,
    ),
    const DecorationImage(
      image: AssetImage("assets/images/comunity/cyber.jpg"),
      fit: BoxFit.cover,
    ),
  ];

  final RxList<Widget> imageContentComunity = <Widget>[].obs;

  // Konstruktor
  ComunityController() {
    updateImageContentComunityController();
    ever(selectedValueIndex, (_) {
      updateImageContentComunityController();
    });
  }

  void updateImageContentComunityController() {
    imageContentComunity.clear();
    for (int i = 0; i < textComunity.length; i++) {
      imageContentComunity.add(
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 7),
            Center(
              child: Container(
                width: double.infinity,
                height: 173,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image:
                      imagesContentComunity[i % imagesContentComunity.length],
                ),
              ),
            ),
            const SizedBox(height: 5),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: '${textComunity[i]} ',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0Xff17E6B7),
                    ),
                  ),
                  const TextSpan(
                    text: 'Comunity',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0Xffd9d9d9),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 7),
            Row(
              children: [
                Image.asset(
                  "assets/icons/comunitycolor.png",
                  width: 16,
                  height: 16,
                ),
                const SizedBox(width: 7),
                const Text(
                  "Join Comunity",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    color: Color(0xffD9D9D9),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
}
