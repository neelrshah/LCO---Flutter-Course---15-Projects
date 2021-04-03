import 'package:flutter/material.dart';

class NumberAudio {
  String audioUri;
  MaterialColor buttonColor;
  String buttonText;

  NumberAudio(String aU, MaterialColor bC, String bT) {
    this.audioUri = aU;
    this.buttonColor = bC;
    this.buttonText = bT;
  }
}
