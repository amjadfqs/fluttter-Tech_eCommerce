import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './SizeConfig.dart';

// const TextStyle priText = TextStyle(
//   fontSize: 24,
//   fontWeight: FontWeight.bold,
//   color: Color(0xff0a1034),
// );

const TextStyle catText = TextStyle(
  color: Color(0xff0a1034),
  fontSize: 18,
  fontWeight: FontWeight.w600,
);

const TextStyle priText = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 32, 126, 193),
);

const TextStyle hintText = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 32, 126, 193),
);

const TextStyle priBtnText = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.w700,
);

const TextStyle secBtnText = TextStyle(
  color: Color.fromARGB(255, 29, 35, 82),
  fontSize: 20,
  fontWeight: FontWeight.w700,
);

TextStyle headText = GoogleFonts.pacifico(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 63, 106, 193),
);

ButtonStyle priBtnStyle = OutlinedButton.styleFrom(
  padding: EdgeInsets.symmetric(
    horizontal: getWidthScreen(40),
    vertical: getHeightScreen(5),
  ),
  backgroundColor: Color.fromARGB(255, 32, 126, 193),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
  ),
);
ButtonStyle secBtnStyle = OutlinedButton.styleFrom(
  elevation: 6,
  padding: EdgeInsets.symmetric(
    horizontal: getWidthScreen(35),
    vertical: getHeightScreen(5),
  ),
  backgroundColor: Color(0xffcccccc),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
  ),
);

final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
