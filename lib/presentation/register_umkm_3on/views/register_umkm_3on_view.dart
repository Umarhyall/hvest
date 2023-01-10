import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hvest/core/utils/size_utils.dart';
import 'package:hvest/routes/app_routes.dart';
import 'package:hvest/widgets/custom_button.dart';
import 'package:hvest/widgets/custom_size.dart';

import '../controllers/register_umkm_3on_controller.dart';

class RegisterUmkm3onView extends GetView<RegisterUmkm3onController> {
  const RegisterUmkm3onView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final width = SizeConfig.screenWidth;
    return Scaffold(
      backgroundColor: Color(0xffF5F6F8),
      body: Padding(
        padding: EdgeInsets.fromLTRB(width * 20 / 428, 0, width * 20 / 428, 0),
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(57.00)),
            //Arrow
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/icon/back.png',
                    fit: BoxFit.fitHeight,
                  ),
                )
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(20.00)),
            //Registrasi
            Row(
              children: [
                Text(
                  'Registrasi',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(32.00),
                    fontFamily: 'poppinssemibold',
                  ),
                ),
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(18.00)),
            //Bar
            Row(
              children: [
                bar(
                    image: 'assets/logo/bluebar.png',
                    text: 'Register',
                    color: 0xff3484F0),
                SizedBox(width: getProportionateScreenWidth(20.00)),
                bar(
                    image: 'assets/logo/greybar.png',
                    text: 'Verifikasi',
                    color: 0xffD9D9D9),
                SizedBox(width: getProportionateScreenWidth(20.00)),
                bar(
                    image: 'assets/logo/greybar.png',
                    text: 'Aktivasi',
                    color: 0xffD9D9D9),
              ],
            ),
            //Opsi
            SizedBox(height: getProportionateScreenHeight(40.00)),
            opsi(
              width: width,
              image: 'assets/icon/bluecheck.png',
              text: 'Identitas Pemilik',
            ),
            SizedBox(height: getProportionateScreenHeight(28.00)),
            opsi(
              width: width,
              image: 'assets/icon/bluecheck.png',
              text: 'Informasi Rekening Bank',
            ),
            SizedBox(height: getProportionateScreenHeight(28.00)),
            opsi(
              width: width,
              image: 'assets/icon/bluecheck.png',
              text: 'Informasi Usaha',
            ),
            CustomButton(
              onTap: () {
                Get.toNamed(AppRoutes.loadingverifikasiScreen);
              },
              height: 64,
              width: 388,
              text: "Selanjutnya",
              margin: getMargin(left: 7, top: 250, bottom: 5),
            )
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
            height: getProportionateScreenHeight(85.13),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(19.04),
              border: Border.all(
                color: Color(0xffDEDEDE),
                width: getProportionateScreenHeight(1.00),
              ),
            ),
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 9.52 / 428),
                child: Row(
                  children: [
                    Image.asset(
                      image,
                      height: getProportionateScreenHeight(57.13),
                      width: getProportionateScreenWidth(57.13),
                    ),
                    SizedBox(width: getProportionateScreenWidth(8.9)),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            text,
                            style: TextStyle(
                              fontFamily: 'poppinssemibold',
                              color: Color(0xff333333),
                              fontSize: getProportionateScreenWidth(18),
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
          SizedBox(height: getProportionateScreenHeight(4.00)),
          Container(
            height: getProportionateScreenHeight(8.00),
            width: getProportionateScreenWidth(115.00),
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
