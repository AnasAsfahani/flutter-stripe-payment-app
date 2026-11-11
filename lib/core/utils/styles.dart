import 'package:flutter/material.dart';


abstract class Styles {
  // قواعد ثابتة بدون fontFamily
  static const TextStyle font8LightBase = TextStyle(
    fontSize: 8,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle font10RegularBase = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle font11RegularBase = TextStyle(
    fontSize: 11,
    height: 2,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle font10BoldBase = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle font12RegularBase = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle font12MediumBase = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle font12BoldBase = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle font13LightBase = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle font13RegularBase = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle font13SemiBoldBase = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle font13BoldBase = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle font14LightBase = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle font14RegularBase = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle font14SemiBoldBase = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle font14BoldBase = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle font15LightBase = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle font15RegularBase = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle font15SemiBoldBase = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle font15BoldBase = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle font16RegularBase = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle font16SemiBoldBase = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle font16BoldBase = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle font17RegularBase = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle font17BoldBase = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle font18RegularBase = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle font18SemiBoldBase = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle font18BoldBase = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle font20RegularBase = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle font20SemiBoldBase = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle font20BoldBase = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle font24SemiBoldBase = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle font24BoldBase = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle font25BoldBase = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle font28SemiBoldBase = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle font30BoldBase = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle font32BoldBase = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle font42BoldBase = TextStyle(
    fontSize: 42,
    fontWeight: FontWeight.bold,
  );

  static TextStyle font8Light() =>
      font8LightBase.copyWith(fontFamily: "Poppins");

  static TextStyle font10Regular() =>
      font10RegularBase.copyWith(fontFamily: "Poppins");

  static TextStyle font11Regular() =>
      font11RegularBase.copyWith(fontFamily: "Poppins");

  static TextStyle font10Bold() =>
      font10BoldBase.copyWith(fontFamily: "Poppins");

  static TextStyle font12Regular() =>
      font12RegularBase.copyWith(fontFamily: "Poppins");

  static TextStyle font12Medium() =>
      font12MediumBase.copyWith(fontFamily: "Poppins");

  static TextStyle font12Bold() =>
      font12BoldBase.copyWith(fontFamily: "Poppins");

  static TextStyle font13Light() =>
      font13LightBase.copyWith(fontFamily: "Poppins");

  static TextStyle font13Regular() =>
      font13RegularBase.copyWith(fontFamily: "Poppins");

  static TextStyle font13SemiBold() =>
      font13SemiBoldBase.copyWith(fontFamily: "Poppins");

  static TextStyle font13Bold() =>
      font13BoldBase.copyWith(fontFamily: "Poppins");

  static TextStyle font14Light() =>
      font14LightBase.copyWith(fontFamily: "Poppins");

  static TextStyle font14Regular() =>
      font14RegularBase.copyWith(fontFamily: "Poppins");

  static TextStyle font14SemiBold() =>
      font14SemiBoldBase.copyWith(fontFamily: "Poppins");

  static TextStyle font14Bold() =>
      font14BoldBase.copyWith(fontFamily: "Poppins");

  static TextStyle font15Light() =>
      font15LightBase.copyWith(fontFamily: "Poppins");

  static TextStyle font15Regular() =>
      font15RegularBase.copyWith(fontFamily: "Poppins");

  static TextStyle font15SemiBold() =>
      font15SemiBoldBase.copyWith(fontFamily: "Poppins");

  static TextStyle font15Bold() =>
      font15BoldBase.copyWith(fontFamily: "Poppins");

  static TextStyle font16Regular() =>
      font16RegularBase.copyWith(fontFamily: "Poppins");

  static TextStyle font16SemiBold() =>
      font16SemiBoldBase.copyWith(fontFamily: "Poppins");

  static TextStyle font16Bold() =>
      font16BoldBase.copyWith(fontFamily: "Poppins");

  static TextStyle font17Regular() =>
      font17RegularBase.copyWith(fontFamily: "Poppins");

  static TextStyle font17Bold() =>
      font17BoldBase.copyWith(fontFamily: "Poppins");

  static TextStyle font18Regular() =>
      font18RegularBase.copyWith(fontFamily: "Poppins");

  static TextStyle font18SemiBold() =>
      font18SemiBoldBase.copyWith(fontFamily: "Poppins");

  static TextStyle font18Bold() =>
      font18BoldBase.copyWith(fontFamily: "Poppins");

  static TextStyle font20Regular() =>
      font20RegularBase.copyWith(fontFamily: "Poppins");

  static TextStyle font20SemiBold() =>
      font20SemiBoldBase.copyWith(fontFamily: "Poppins");

  static TextStyle font20Bold() =>
      font20BoldBase.copyWith(fontFamily: "Poppins");

  static TextStyle font24SemiBold() =>
      font24SemiBoldBase.copyWith(fontFamily: "Poppins");

  static TextStyle font24Bold() =>
      font24BoldBase.copyWith(fontFamily: "Poppins");

  static TextStyle font25Bold() =>
      font25BoldBase.copyWith(fontFamily: "Poppins");

  static TextStyle font28SemiBold() =>
      font28SemiBoldBase.copyWith(fontFamily: "Poppins");

  static TextStyle font30Bold() =>
      font30BoldBase.copyWith(fontFamily: "Poppins");

  static TextStyle font32Bold() =>
      font32BoldBase.copyWith(fontFamily: "Poppins");
  static TextStyle font42Bold() =>
      font42BoldBase.copyWith(fontFamily: "Poppins");
}
