import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/certificate_controller.dart';

class CertificateView extends GetView<CertificateController> {
  const CertificateView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(35),
        child: AppBar(
          title: Text(
            "Certificate",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0XFFD9D9D9),
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
      ),
      backgroundColor: const Color(0xff0D0D0F),
      body: Padding(
        padding: const EdgeInsets.only(left: 17, right: 17),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: List.generate(
                      controller.imageContentComunity.length,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: GestureDetector(
                          onTap: () {},
                          child: controller.imageContentComunity[index],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
