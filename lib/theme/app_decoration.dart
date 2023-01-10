import 'package:flutter/material.dart';
import 'package:hvest/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get gradientBlueA200IndigoA400 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.blueA200,
            ColorConstant.indigoA400,
          ],
        ),
      );
  static BoxDecoration get fillIndigo900 => BoxDecoration(
        color: ColorConstant.indigo900,
      );
  static BoxDecoration get fillGray10001 => BoxDecoration(
        color: ColorConstant.gray10001,
      );
  static BoxDecoration get fillBlue300f4 => BoxDecoration(
        color: ColorConstant.blue300F4,
      );
  static BoxDecoration get outlineGray3002 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineGray3001 => BoxDecoration(
        color: ColorConstant.gray200,
        border: Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.04,
          ),
        ),
      );
  static BoxDecoration get txtOutlineDeeporange800 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.deepOrange800,
          width: getHorizontalSize(
            1.03,
          ),
        ),
      );
  static BoxDecoration get fillIndigoA200 => BoxDecoration(
        color: ColorConstant.indigoA200,
      );
  static BoxDecoration get txtOutlineYellow700 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.yellow700,
          width: getHorizontalSize(
            1.03,
          ),
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillBlueA400 => BoxDecoration(
        color: ColorConstant.blueA400,
      );
  static BoxDecoration get txtOutlineBluegray200 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.blueGray200,
          width: getHorizontalSize(
            1.03,
          ),
        ),
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        color: ColorConstant.gray50,
        border: Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get gradientBlueA20001IndigoA40001 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.blueA20001,
            ColorConstant.indigoA40001,
          ],
        ),
      );
  static BoxDecoration get outlineBlueA4007f => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.blueA4007f,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillBlue700 => BoxDecoration(
        color: ColorConstant.blue700,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: ColorConstant.gray200,
      );
  static BoxDecoration get fillGray100 => BoxDecoration(
        color: ColorConstant.gray100,
      );
  static BoxDecoration get outlineBlack90019 => BoxDecoration();
  static BoxDecoration get fillBlue7007c => BoxDecoration(
        color: ColorConstant.blue7007c,
      );
  static BoxDecoration get txtOutlineGray300 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get txtOutlineBluegray40001 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.blueGray40001,
          width: getHorizontalSize(
            1.03,
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius circleBorder1 = BorderRadius.circular(
    getHorizontalSize(
      1.00,
    ),
  );

  static BorderRadius customBorderTL10 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        10.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        10.00,
      ),
    ),
  );

  static BorderRadius customBorderTL25 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        25.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        25.00,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        25.00,
      ),
    ),
  );

  static BorderRadius customBorderBL10 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        10.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        10.00,
      ),
    ),
  );

  static BorderRadius customBorderBL20 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        20.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        20.00,
      ),
    ),
  );

  static BorderRadius roundedBorder19 = BorderRadius.circular(
    getHorizontalSize(
      19.00,
    ),
  );

  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8.00,
    ),
  );

  static BorderRadius circleBorder11 = BorderRadius.circular(
    getHorizontalSize(
      11.00,
    ),
  );

  static BorderRadius txtRoundedBorder18 = BorderRadius.circular(
    getHorizontalSize(
      18.00,
    ),
  );

  static BorderRadius customBorderTL251 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        25.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        25.00,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        25.00,
      ),
    ),
  );

  static BorderRadius roundedBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15.00,
    ),
  );

  static BorderRadius roundedBorder24 = BorderRadius.circular(
    getHorizontalSize(
      24.00,
    ),
  );

  static BorderRadius roundedBorder35 = BorderRadius.circular(
    getHorizontalSize(
      35.00,
    ),
  );

  static BorderRadius roundedBorder30 = BorderRadius.circular(
    getHorizontalSize(
      30.00,
    ),
  );

  static BorderRadius txtRoundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8.00,
    ),
  );
}
