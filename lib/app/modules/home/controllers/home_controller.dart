import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final selectedValueIndex = 0.obs;

  // Data text content setelah search
  final buttonText = [
    "Flutter",
    "Web Design",
    "App Design",
    "Python",
    "Web Programming",
    "Graphic Design",
    "Game Dev",
    "Machine Learning",
  ];

  // Data text content yang nantinya digabung dengan gambar pada container
  final textContentContinueWatching = [
    "Web Design",
    "App Design",
    "Flutter",
  ];

  // Data images content continue watching
  final List<DecorationImage> imagesContentContinueWatching = [
    const DecorationImage(
      image: AssetImage("assets/images/webdesign.jpg"),
      fit: BoxFit.cover,
    ),
    const DecorationImage(
      image: AssetImage("assets/images/appdesign.jpg"),
      fit: BoxFit.cover,
    ),
    const DecorationImage(
      image: AssetImage("assets/images/flutter.jpg"),
      fit: BoxFit.cover,
    ),
  ];

  final RxList<Widget> imageContentContinueWatching = <Widget>[].obs;

  // Data content course
  final textContentCourses = [
    "CyberSecurity",
    "Machine Learning",
    "Graphic Design",
    "Game Dev",
  ];

  // Data images content course
  final List<DecorationImage> imagesContentCourse = [
    const DecorationImage(
      image: AssetImage("assets/images/cybersecurity.jpg"),
      fit: BoxFit.cover,
    ),
    const DecorationImage(
      image: AssetImage("assets/images/machinelearning.jpg"),
      fit: BoxFit.cover,
    ),
    const DecorationImage(
      image: AssetImage("assets/images/graphicdesign.jpg"),
      fit: BoxFit.cover,
    ),
    const DecorationImage(
      image: AssetImage("assets/images/gamedev.png"),
      fit: BoxFit.cover,
    ),
  ];

  final RxList<Widget> imageContentCourse = <Widget>[].obs;

  // Konstruktor
  HomeController() {
    updateImageContentContinueWatchingController();
    updateImageContentCourse();
    ever(selectedValueIndex, (_) {
      updateImageContentContinueWatchingController();
      updateImageContentCourse();
    });
  }

  void updateImageContentContinueWatchingController() {
    imageContentContinueWatching.clear();
    for (int i = 0; i < textContentContinueWatching.length; i++) {
      imageContentContinueWatching.add(
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 163,
              height: 163,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: imagesContentContinueWatching[
                    i % imagesContentContinueWatching.length],
              ),
            ),
            const SizedBox(width: 7),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textContentContinueWatching[i],
                  style: const TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/icons/person.png",
                      width: 12,
                      height: 12,
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      "Lorem",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 8,
                          fontWeight: FontWeight.w200,
                          color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 7),
                SizedBox(
                  width: 163,
                  child: SizedBox(
                    height: 12,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: List.generate(
                            5,
                            (index) => Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Image.asset("assets/icons/star.png",
                                  width: 12, height: 12),
                            ),
                          ),
                        ),
                        const Text(
                          "70% completed",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 6,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 7),
                const SizedBox(
                  height: 1,
                  width: 163,
                  child: CircularProgressIndicator(
                    value: 0.5,
                    backgroundColor: Color(0xff1663F2),
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }
  }

  void updateImageContentCourse() {
    imageContentCourse.clear();
    for (int i = 0; i < textContentCourses.length; i++) {
      imageContentCourse.add(
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 163,
              height: 163,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: imagesContentCourse[i % imagesContentCourse.length],
              ),
            ),
            const SizedBox(width: 7),
            Text(
              textContentCourses[i],
              style: const TextStyle(
                fontFamily: "Poppins",
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Image.asset(
                  "assets/icons/person.png",
                  width: 12,
                  height: 12,
                ),
                const SizedBox(width: 5),
                const Text(
                  "Lorem",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 8,
                      fontWeight: FontWeight.w200,
                      color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 7),
            SizedBox(
              width: 163,
              child: SizedBox(
                height: 12,
                child: Row(
                  children: List.generate(
                    5,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Image.asset("assets/icons/star.png",
                          width: 12, height: 12),
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
}
