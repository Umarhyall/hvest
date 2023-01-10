// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/custom_button.dart';

import 'package:hvest/widgets/custom_size.dart';

import '../controllers/identitas_pemilik_controller.dart';

class IdentitasPemilikView extends GetView<IdentitasPemilikController> {
  const IdentitasPemilikView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final width = SizeConfig.screenWidth;
    final height = SizeConfig.screenHeight;
    return Scaffold(
      backgroundColor: Color(0xffF5F6F8),
      body: Column(
        children: [
          Container(
            width: getProportionateScreenWidth(428),
            height: getProportionateScreenHeight(119),
            decoration: BoxDecoration(
                color: Color(0xff3484F0),
                borderRadius:
                    BorderRadius.circular(getProportionateScreenWidth(20))),
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  width * 25 / 428, width * 55 / 428, 0, width * 28 / 926),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset(
                      'assets/icon/arrow_left_putih.png',
                      width: getProportionateScreenHeight(20),
                      height: getProportionateScreenHeight(20),
                    ),
                  ),
                  SizedBox(width: getProportionateScreenWidth(18)),
                  Text(
                    'Identitas Pemilik',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(24),
                      fontFamily: 'poppinssemibold',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  EdgeInsets.fromLTRB(width * 20 / 428, 0, width * 20 / 428, 0),
              child: ListView(
                padding: EdgeInsets.fromLTRB(0, width * (12 / 428), 0, 0),
                children: [
                  Text(
                    'Nama Pemilik',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(20.00),
                      fontFamily: 'poppinssemibold',
                      color: Color(0xff121212),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(8)),
                  TextfieldWithIcon(
                    width: width,
                    image: 'assets/icon/person.png',
                    text: 'Tulis nama anda',
                  ),
                  SizedBox(height: getProportionateScreenHeight(8)),
                  Text(
                    'Nama harus ditulis sama seperti',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(16),
                      fontFamily: 'poppinsregular',
                      color: Color(0xff8D8D8D),
                    ),
                  ),
                  Text(
                    'tertera pada KTP.',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(16),
                      fontFamily: 'poppinsregular',
                      color: Color(0xff8D8D8D),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(18)),
                  Text(
                    'Upload Foto KTP Pemilik',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(20),
                      fontFamily: 'poppinssemibold',
                      color: Color(0xff121212),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(8)),
                  Container(
                    child: GetBuilder<IdentitasPemilikController>(
                      builder: (c) => c.pickedImage2 != null
                          ? GestureDetector(
                              onTap: () => controller.selectImage2(),
                              child: Container(
                                width: width,
                                height: getProportionateScreenHeight(233),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: FileImage(
                                      File(c.pickedImage2!.path),
                                    ),
                                  ),
                                  border: Border.all(
                                    color: Color(0xffDEDEDE),
                                    width: 1,
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      getProportionateScreenWidth(20)),
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () => controller.selectImage2(),
                              child: upload(
                                width: width,
                                text: 'Upload KTP',
                              ),
                            ),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(18)),
                  Text(
                    'Nomor KTP ',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(20.00),
                      fontFamily: 'poppinssemibold',
                      color: Color(0xff121212),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(8)),
                  TextfieldWithNoIcon(
                      width: width, text: 'Tulis nomor KTP anda'),
                  SizedBox(height: getProportionateScreenHeight(18)),
                  Text(
                    'Tempat Lahir',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(20.00),
                      fontFamily: 'poppinssemibold',
                      color: Color(0xff121212),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(8)),
                  TextfieldWithNoIcon(
                      width: width, text: 'Tulis tempat lahir anda'),
                  SizedBox(height: getProportionateScreenHeight(18)),
                  Text(
                    'Upload Foto Diri',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(20.00),
                      fontFamily: 'poppinssemibold',
                      color: Color(0xff121212),
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(8)),
                  Container(
                    child: GetBuilder<IdentitasPemilikController>(
                      builder: (c) => c.pickedImage != null
                          ? GestureDetector(
                              onTap: () => controller.selectImage(),
                              child: Container(
                                width: width,
                                height: getProportionateScreenHeight(233),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: FileImage(
                                      File(c.pickedImage!.path),
                                    ),
                                  ),
                                  border: Border.all(
                                    color: Color(0xffDEDEDE),
                                    width: 1,
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      getProportionateScreenWidth(20)),
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () => controller.selectImage(),
                              child: upload(
                                width: width,
                                text: 'Upload Foto Anda',
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(428),
            height: getProportionateScreenHeight(110),
            decoration: BoxDecoration(
              color: Color(0xffF5F6F8),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(width * 20 / 428, height * 15 / 926,
                  width * 20 / 428, height * 19 / 926),
              child: CustomButton(
                onTap: () {
                  Get.toNamed(AppRoutes.registerUmkm1onView);
                },
                height: 64,
                width: 388,
                text: "Simpan",
              ),
            ),
          )
        ],
      ),
    );
  }
}

class upload extends StatelessWidget {
  const upload({
    Key? key,
    required this.width,
    required this.text,
  }) : super(key: key);

  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: getProportionateScreenHeight(233),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffDEDEDE),
          width: 1,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(getProportionateScreenWidth(20)),
      ),
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(58),
          ),
          Image.asset(
            'assets/image/upload.png',
            width: getProportionateScreenWidth(69),
            height: getProportionateScreenHeight(69),
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                fontFamily: 'poppinsregular',
                color: Color(0xff000000)),
          ),
          Text(
            '(maks. 5mb)',
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                fontFamily: 'poppinsitalic',
                color: Color(0xffFC8383)),
          )
        ],
      ),
    );
  }
}

class TextfieldWithIcon extends StatelessWidget {
  const TextfieldWithIcon({
    Key? key,
    required this.width,
    required this.image,
    required this.text,
  }) : super(key: key);

  final double width;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: TextFormField(
            style: TextStyle(
              fontFamily: 'poppinsregular',
              fontSize: getProportionateScreenWidth(20),
              color: Color(0xff000000),
            ),
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color(0xffDEDEDE),
                    width: getProportionateScreenWidth(1)),
                borderRadius: BorderRadius.circular(
                  getProportionateScreenWidth(15),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color(0xff4000F5),
                    width: getProportionateScreenWidth(1)),
                borderRadius:
                    BorderRadius.circular(getProportionateScreenWidth(15)),
              ),
              suffixIcon: Image.asset('assets/icon/person.png'),
              fillColor: Colors.white,
              filled: true,
              hintText: text,
            ),
          ),
        ),
      ],
    );
  }
}

class TextfieldWithNoIcon extends StatelessWidget {
  const TextfieldWithNoIcon({
    Key? key,
    required this.width,
    required this.text,
  }) : super(key: key);

  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: TextFormField(
            style: TextStyle(
              fontFamily: 'poppinsregular',
              fontSize: getProportionateScreenWidth(20),
              color: Color(0xff000000),
            ),
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color(0xffDEDEDE),
                    width: getProportionateScreenWidth(1)),
                borderRadius: BorderRadius.circular(
                  getProportionateScreenWidth(15),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Color(0xff4000F5),
                    width: getProportionateScreenWidth(1)),
                borderRadius:
                    BorderRadius.circular(getProportionateScreenWidth(15)),
              ),
              fillColor: Colors.white,
              filled: true,
              hintText: text,
            ),
          ),
        ),
      ],
    );
  }
}
