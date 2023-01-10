import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/presentation/identitas_pemilik/views/identitas_pemilik_view.dart';

import '../controllers/info_usaha_controller.dart';

class InfoUsahaView extends GetView<InfoUsahaController> {
  const InfoUsahaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    InfoUsahaController controller = InfoUsahaController();
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: getVerticalSize(428),
            height: getHorizontalSize(119),
            decoration: BoxDecoration(
                color: Color(0xff3484F0),
                borderRadius: BorderRadius.circular(getVerticalSize(20))),
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
                      width: getVerticalSize(20),
                      height: getHorizontalSize(20),
                    ),
                  ),
                  SizedBox(width: getVerticalSize(18)),
                  Text(
                    'Informasi Rekening Bank',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getFontSize(24),
                      fontFamily: 'poppinssemibold',
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: getHorizontalSize(24)),
          Expanded(
            child: Padding(
              padding:
                  EdgeInsets.fromLTRB(width * 20 / 428, 0, width * 20 / 428, 0),
              child: ListView(
                padding: EdgeInsets.fromLTRB(0, width * (12 / 428), 0, 0),
                children: [
                  Row(
                    children: [
                      Text(
                        'Nama Usaha',
                        style: TextStyle(
                          fontSize: getFontSize(20.00),
                          fontFamily: 'poppinssemibold',
                          color: Color(0xff121212),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: getHorizontalSize(8)),
                  TextfieldWithNoIcon(
                      width: width, text: 'Tulis nama usaha anda'),
                  SizedBox(height: getHorizontalSize(24)),
                  Row(
                    children: [
                      Text(
                        'Bidang Usaha',
                        style: TextStyle(
                          fontSize: getFontSize(20.00),
                          fontFamily: 'poppinssemibold',
                          color: Color(0xff121212),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: getHorizontalSize(8)),
                  TextfieldWithNoIcon(
                      width: width, text: 'Tulis bidang usaha anda'),
                  SizedBox(height: getHorizontalSize(24)),
                  Row(
                    children: [
                      Text(
                        'Alamat Usaha',
                        style: TextStyle(
                          fontSize: getFontSize(20.00),
                          fontFamily: 'poppinssemibold',
                          color: Color(0xff121212),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: getHorizontalSize(8)),
                  TextfieldWithNoIcon(
                      width: width, text: 'Tulis alamat usaha anda'),
                  SizedBox(height: getHorizontalSize(18)),
                  checkbox(),
                ],
              ),
            ),
          ),
          Container(
            width: getVerticalSize(428),
            height: getHorizontalSize(110),
            decoration: BoxDecoration(
              color: Color(0xffF5F6F8),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(width * 20 / 428, height * 15 / 926,
                  width * 20 / 428, height * 19 / 926),
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.registerUmkm3onView);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff015EE9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      getVerticalSize(8),
                    ),
                  ),
                ),
                child: Text(
                  'Simpan',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: getFontSize(24.00),
                      fontFamily: 'poppinssemibold'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class checkbox extends StatefulWidget {
  const checkbox({Key? key}) : super(key: key);

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    InfoUsahaController controller = InfoUsahaController();
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Saya memiliki kartu NPWP',
                style: TextStyle(
                  fontSize: getFontSize(18.00),
                  fontFamily: 'poppinssemibold',
                  color: Color(0xff121212),
                ),
              ),
              Checkbox(
                  value: isChecked,
                  checkColor: Colors.white,
                  activeColor: Color(0xff4000F5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  side: MaterialStateBorderSide.resolveWith(
                    (states) =>
                        BorderSide(width: 2.0, color: Color(0xff4000F5)),
                  ),
                  onChanged: (newbool) {
                    setState(() {
                      isChecked = newbool!;
                    });
                  }),
            ],
          ),
          SizedBox(height: getHorizontalSize(18)),
          Visibility(
            maintainState: true,
            maintainAnimation: true,
            visible: isChecked,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Upload Foto NPWP',
                      style: TextStyle(
                        fontSize: getFontSize(20.00),
                        fontFamily: 'poppinssemibold',
                        color: Color(0xff121212),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getHorizontalSize(8)),
                uploadOrNullUsaha(controller: controller, width: width),
                SizedBox(height: getHorizontalSize(24)),
                Row(
                  children: [
                    Text(
                      'Nomor NPWP',
                      style: TextStyle(
                        fontSize: getFontSize(20.00),
                        fontFamily: 'poppinssemibold',
                        color: Color(0xff121212),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getHorizontalSize(8)),
                TextfieldWithNoIcon(
                    width: width, text: 'Tulis nomor NPWP anda'),
                SizedBox(height: getHorizontalSize(30)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class uploadOrNullUsaha extends StatelessWidget {
  const uploadOrNullUsaha({
    Key? key,
    required this.controller,
    required this.width,
  }) : super(key: key);

  final InfoUsahaController controller;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GetBuilder<InfoUsahaController>(
        builder: (c) => c.pickedImage2 != null
            ? GestureDetector(
                onTap: () => controller.selectImage2(),
                child: Container(
                  width: width,
                  height: getHorizontalSize(233),
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
                    borderRadius: BorderRadius.circular(getVerticalSize(20)),
                  ),
                ),
              )
            : GestureDetector(
                onTap: () => controller.selectImage2(),
                child: upload(
                  width: width,
                  text: 'Upload NPWP',
                ),
              ),
      ),
    );
  }
}
