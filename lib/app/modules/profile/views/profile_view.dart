import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xff0D0D0F),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
        child: Column(
          children: [
            const Center(
              child: Text(
                "Profile",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  width: double.infinity,
                  height: 230,
                  margin: const EdgeInsets.only(top: 80),
                  decoration: BoxDecoration(
                    color: const Color(0XFF1E1E1E),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Abaout Me",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  child: Column(
                    children: [
                      Container(
                        width: 160,
                        height: 160,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            image: AssetImage("assets/images/profile.jpg"),
                          ),
                          border: Border.all(
                              color: const Color(0XFF17E6B7), width: 3),
                        ),
                      ),
                      const Text(
                        "Oncom",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF17E6B7),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: double.infinity,
                height: 30,
                child: Row(
                  children: [
                    Image.asset("assets/icons/edit_profile.png"),
                    const SizedBox(width: 23),
                    const Text(
                      "Edit Profile",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: double.infinity,
                height: 30,
                child: Row(
                  children: [
                    Image.asset("assets/icons/certificate.png"),
                    const SizedBox(width: 23),
                    const Text(
                      "My Certificate",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: double.infinity,
                height: 30,
                child: Row(
                  children: [
                    Image.asset("assets/icons/notif.png"),
                    const SizedBox(width: 23),
                    const Text(
                      "Notification Setting",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: double.infinity,
                height: 30,
                child: Row(
                  children: [
                    Image.asset("assets/icons/security.png"),
                    const SizedBox(width: 23),
                    const Text(
                      "Security",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: double.infinity,
                height: 30,
                child: Row(
                  children: [
                    Image.asset("assets/icons/signout.png"),
                    const SizedBox(width: 23),
                    const Text(
                      "Sign Out",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
