import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0D0D0F),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 53,
          left: 20,
          right: 20,
          bottom: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 46,
                  height: 46,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/profile.jpg"),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 10),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Color(0XffD9D9D9),
                      ),
                    ),
                    Text(
                      "Oncom",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0Xff17E6B7),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_active_outlined,
                    size: 22,
                    color: Color(0Xff17E6B7),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Improve Your ',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0XffD9D9D9)),
                  ),
                  TextSpan(
                    text: 'Skills',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0Xff17E6B7),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Obx(() => SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      controller.buttonText.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: ElevatedButton(
                          onPressed: () {
                            controller.selectedValueIndex.value = index;
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(144, 31),
                            backgroundColor:
                                controller.selectedValueIndex.value == index
                                    ? Colors.transparent
                                    : Colors.transparent,
                            side: BorderSide(
                              color:
                                  controller.selectedValueIndex.value == index
                                      ? const Color(0Xff17E6B7)
                                      : const Color(0Xff1663F2),
                            ),
                          ),
                          child: Text(
                            controller.buttonText[index],
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Color(0XffD9D9D9)),
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
