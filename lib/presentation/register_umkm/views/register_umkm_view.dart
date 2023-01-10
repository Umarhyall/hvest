// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hvest/widgets/custom_size.dart';

import '../../../core/app_export.dart';
import '../controllers/register_umkm_controller.dart';

class RegisterUmkmView extends GetView<RegisterUmkmController> {
  const RegisterUmkmView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F6F8),
      body: Padding(
        padding: EdgeInsets.fromLTRB(width * 20 / 428, 0, width * 20 / 428, 0),
        child: Column(
          children: [
            SizedBox(height: getHorizontalSize(57.00)),
            //Arrow
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset(
                    'assets/icon/back.png',
                    fit: BoxFit.fitHeight,
                  ),
                )
              ],
            ),
            SizedBox(height: getHorizontalSize(20.00)),
            //Registrasi
            Row(
              children: [
                Text(
                  'Registrasi',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: getFontSize(32.00),
                    fontFamily: 'poppinssemibold',
                  ),
                ),
              ],
            ),
            SizedBox(height: getHorizontalSize(18.00)),
            //Bar
            Row(
              children: [
                bar(
                    image: 'assets/logo/bluebar.png',
                    text: 'Register',
                    color: 0xff3484F0),
                SizedBox(width: getVerticalSize(20.00)),
                bar(
                    image: 'assets/logo/greybar.png',
                    text: 'Verifikasi',
                    color: 0xffD9D9D9),
                SizedBox(width: getVerticalSize(20.00)),
                bar(
                    image: 'assets/logo/greybar.png',
                    text: 'Aktivasi',
                    color: 0xffD9D9D9),
              ],
            ),
            //Opsi
            SizedBox(height: getHorizontalSize(40.00)),
            InkWell(
              onTap: () {
                Get.toNamed(AppRoutes.identitasPemilikView);
              },
              child: opsi(
                width: width,
                image: 'assets/icon/blackcheck.png',
                text: 'Identitas Pemilik',
              ),
            ),
            SizedBox(height: getHorizontalSize(28.00)),
            InkWell(
              onTap: () {
                // onTapRegisterUmkmView1();
              },
              child: opsi(
                width: width,
                image: 'assets/icon/blackcheck.png',
                text: 'Informasi Rekening Bank',
              ),
            ),
            SizedBox(height: getHorizontalSize(28.00)),
            InkWell(
              onTap: () {
                // onTapRegisterUmkmView2();
              },
              child: opsi(
                width: width,
                image: 'assets/icon/blackcheck.png',
                text: 'Informasi Usaha',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class opsi extends StatelessWidget {
  const opsi({
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
      children: [
        Expanded(
          child: Container(
            height: getHorizontalSize(85.13),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(19.04),
              border: Border.all(
                color: Color(0xffDEDEDE),
                width: getVerticalSize(1.00),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 9.52 / 428),
              child: Row(
                children: [
                  Image.asset(
                    image,
                    height: getHorizontalSize(57.13),
                    width: getVerticalSize(57.13),
                  ),
                  SizedBox(width: getVerticalSize(8.9)),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          text,
                          style: TextStyle(
                            fontFamily: 'poppinssemibold',
                            color: Color(0xff333333),
                            fontSize: getFontSize(18),
                          ),
                        ),
                        Container(
                          child: Image.asset('assets/icon/arrowkite.png'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class bar extends StatelessWidget {
  const bar({
    Key? key,
    required this.image,
    required this.text,
    required this.color,
  }) : super(key: key);

  final String image;
  final String text;
  final dynamic color;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              color: Color(color),
              fontFamily: 'poppinsregular',
              fontSize: getProportionateScreenWidth(20.00),
            ),
          ),
          SizedBox(height: getHorizontalSize(4.00)),
          Container(
            height: getHorizontalSize(8.00),
            width: getVerticalSize(115.00),
            decoration: BoxDecoration(
              color: Color(color),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ],
      ),
    );
  }
}
