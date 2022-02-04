import 'package:flutter/material.dart';
import 'package:flutter_maps/constants/Constants.dart';

class Temp {
  IconData? iconData;
  String? title;
  Color? iconColor;
  Color? bgColor;
  Color? btnColor;
  num? left;
  num? done;
  bool isLast;
  Temp({
    this.iconData,
    this.title,
    this.btnColor,
    this.iconColor,
    this.done,
    this.isLast = false,
    this.bgColor,
    this.left,
  });
  static List<Temp> generateFeatures() {
    return [
      Temp(
        iconData: Icons.location_on_rounded,
        title: 'Findme',
        bgColor: kLightYellow,
        iconColor: kDarkYellow,
        left: 3,
        done: 1,
      ),
      Temp(
        iconData: Icons.chat_bubble_rounded,
        title: 'Commmunity Forum',
        bgColor: kLightRed,
        iconColor: kDarkRed,
        left: 0,
        done: 0,
      ),
      Temp(
        iconData: Icons.event_note_rounded,
        title: 'Events/Programs',
        bgColor: kLightBlue,
        iconColor: kDarkBlue,
        left: 0,
        done: 0,
      ),
      Temp(
        iconData: Icons.person_rounded,
        title: 'Support Personnel',
        bgColor: kLightYellow,
        iconColor: kDarkYellow,
        left: 0,
        done: 0,
      ),
      Temp(isLast: true),
    ];
  }

  static generateTemp() {}
}
