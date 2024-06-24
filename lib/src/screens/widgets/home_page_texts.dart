import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
Text navigationText() {
  return Text("See All",style: TextStyle(
      fontWeight: FontWeight.normal,
      fontSize: 18,
      color: primayColor
  ),);
}

Text subHeadersText(String text) {
  return Text(text,style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold
  ),);
}