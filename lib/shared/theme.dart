import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color blackColor = const Color(0xFF333333);
Color grayColor = const Color(0xFF828282);
Color whiteColor = const Color(0xffFFFFFF);
Color blueColor = const Color(0xff0A97B0);
Color greenColor = const Color(0xff46B5A7);

Color yellowColor = const Color(0xffF2C94C);
Color cyanColor = const Color(0xff56CCF2);
Color orangeColor = const Color(0xffF2994A);
Color redColor = const Color(0xffEB5757);
Color darkPurpleColor = const Color(0xff9B51E0);
Color lightGreenColor = const Color(0xff27AE60);
Color lightPurpleColor = const Color(0xffBB6BD9);
Color lightBlueColor = const Color(0xff2D9CDB);
Color darkBlueColor = const Color(0xff2F80ED);

TextStyle blackTextStyle = GoogleFonts.sourceSans3(
  color: blackColor,
);
TextStyle grayTextStyle = GoogleFonts.sourceSans3(
  color: grayColor,
);
TextStyle whiteTextStyle = GoogleFonts.sourceSans3(
  color: whiteColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semibold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extrabold = FontWeight.w800;
FontWeight black = FontWeight.w900;

Image foodIcon = Image.asset(
  'assets/food_icon.png',
  color: yellowColor,
  width: 24,
);
Image internetIcon = Image.asset(
  'assets/internet_icon.png',
  color: cyanColor,
  width: 24,
);
Image educationIcon = Image.asset(
  'assets/edu_icon.png',
  color: orangeColor,
  width: 24,
);
Image giftIcon = Image.asset(
  'assets/gift_icon.png',
  color: redColor,
  width: 24,
);
Image transportIcon = Image.asset(
  'assets/transport_icon.png',
  color: darkPurpleColor,
  width: 24,
);
Image shopIcon = Image.asset(
  'assets/shop_icon.png',
  color: lightGreenColor,
  width: 24,
);
Image homeIcon = Image.asset(
  'assets/home_icon.png',
  color: lightPurpleColor,
  width: 24,
);
Image sportIcon = Image.asset(
  'assets/sport_icon.png',
  color: lightBlueColor,
  width: 24,
);
Image entertaintIcon = Image.asset(
  'assets/entertaint_icon.png',
  color: darkBlueColor,
  width: 24,
);
