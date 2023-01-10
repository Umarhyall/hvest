import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hvest/core/app_export.dart';
import 'package:hvest/widgets/custom_size.dart';

import '../../identitas_pemilik/views/identitas_pemilik_view.dart';

import '../controllers/info_rekening_controller.dart';

class InfoRekeningView extends GetView<InfoRekeningController> {
  const InfoRekeningView({Key? key}) : super(key: key);
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
          SizedBox(height: getProportionateScreenHeight(32)),
          Padding(
            padding:
                EdgeInsets.fromLTRB(width * 20 / 428, 0, width * 20 / 428, 0),
            child: Row(children: [
              Expanded(
                child: Container(
                  height: getProportionateScreenHeight(80),
                  decoration: BoxDecoration(
                    color: Color(0xff015EE9),
                    borderRadius: BorderRadius.circular(
                      getProportionateScreenWidth(15),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: getProportionateScreenWidth(8.53)),
                      Image.asset(
                        'assets/icon/info.png',
                        height: getProportionateScreenHeight(39),
                        width: getProportionateScreenWidth(39),
                      ),
                      SizedBox(width: getProportionateScreenWidth(6.56)),
                      Text(
                        'Rekening bank akan digunakan sebagai rekening\ntujuan dana modal usaha anda.',
                        style: TextStyle(
                          fontFamily: 'poppinsregular',
                          color: Colors.white,
                          fontSize: getFontSize(13.12),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          SizedBox(height: getProportionateScreenWidth(24)),
          Padding(
            padding:
                EdgeInsets.fromLTRB(width * 20 / 428, 0, width * 20 / 428, 0),
            child: Row(
              children: [
                Text(
                  'Nomor Rekening',
                  style: TextStyle(
                    fontSize: getFontSize(20.00),
                    fontFamily: 'poppinssemibold',
                    color: Color(0xff121212),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(8)),
          Padding(
            padding:
                EdgeInsets.fromLTRB(width * 20 / 428, 0, width * 20 / 428, 0),
            child: TextfieldWithNoIcon(
                width: width, text: 'Tulis nomor rekening anda'),
          ),
          SizedBox(height: getProportionateScreenHeight(24)),
          Padding(
            padding:
                EdgeInsets.fromLTRB(width * 20 / 428, 0, width * 20 / 428, 0),
            child: Row(
              children: [
                Text(
                  'Nama Bank',
                  style: TextStyle(
                    fontSize: getFontSize(20.00),
                    fontFamily: 'poppinssemibold',
                    color: Color(0xff121212),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(8)),
          Padding(
            padding:
                EdgeInsets.fromLTRB(width * 20 / 428, 0, width * 20 / 428, 0),
            child: Row(
              children: [
                Expanded(child: dropdown()),
              ],
            ),
          ),
          SizedBox(height: getHorizontalSize(260)),
          InkWell(
            onTap: () {
              Get.toNamed(AppRoutes.registerUmkm2onView);
            },
            child: Padding(
              padding:
                  EdgeInsets.fromLTRB(width * 20 / 428, 0, width * 20 / 428, 0),
              child: Row(children: [
                Expanded(
                  child: Container(
                      height: getProportionateScreenHeight(64),
                      decoration: BoxDecoration(
                        color: Color(0xff015EE9),
                        borderRadius: BorderRadius.circular(
                          getProportionateScreenWidth(15),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'Simpan',
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'poppinsbold',
                            color: Colors.white,
                          ),
                        ),
                      )),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class dropdown extends StatefulWidget {
  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  Object? selected;

  List<String> data = [
    'PT. Bank Rakyat Indonesia TBK.',
    'PT. Bank Central Asia TBK.',
    'PT. Bank Jago TBK.',
    'PT. Bank Mandiri  TBK.',
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final width = SizeConfig.screenWidth;
    return Container(
      height: getProportionateScreenHeight(66),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(8)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: getProportionateScreenHeight(14),
              offset: Offset(0, 4),
            )
          ]),
      child: Center(
        child: Padding(
          padding:
              EdgeInsets.fromLTRB(width * 22 / 428, 0, width * 28 / 428, 0),
          child: DropdownButtonFormField(
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              fontFamily: 'poppinsregular',
              color: Color(0xff000000),
            ),
            icon: Image.asset(
              'assets/icon/small_arrow.png',
              height: getProportionateScreenHeight(9),
              width: getProportionateScreenWidth(13),
            ),
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
            ),
            value: selected,
            hint: Text(
              'Pilih Nama Bank',
              style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                fontFamily: 'poppinsregular',
                color: Color(0xff666666),
              ),
            ),
            onChanged: (value) {
              print(value);
              setState(() {
                selected = value;
              });
            },
            items: data
                .map(
                  (e) => DropdownMenuItem(
                    value: e,
                    child: Text(e),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
