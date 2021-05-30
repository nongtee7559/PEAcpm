import 'package:cpm/Ulility/constants.dart';
import 'package:cpm/Ulility/text_style.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

Future<void> normalDialog(
    BuildContext context, String title, String subtitle) async {
  Alert(
    context: context,
    type: AlertType.success,
    title: title,
    desc: subtitle,
    style: AlertStyle(titleStyle: bl22Style, descStyle: bl12Style),
    buttons: [
      DialogButton(
        child: Text(
          "ตกลง",
          style: wl14Style,
        ),
        onPressed: () => Navigator.pop(context),
        color: primaryColor,
      ),
    ],
  ).show();
}

Future<void> normalDialogTablet(
    BuildContext context, String title, String subtitle) async {
  Alert(
    context: context,
    type: AlertType.success,
    title: title,
    desc: subtitle,
    style: AlertStyle(titleStyle: bl22Style, descStyle: bl12Style),
    buttons: [
      DialogButton(
        child: Text(
          "ตกลง",
          style: wl14Style,
        ),
        onPressed: () => Navigator.pop(context),
        color: primaryColor,
      ),
    ],
  ).show();
}

Future<void> normalDialogrequirementTablet(
    BuildContext context, String title, String subtitle) async {
  Alert(
    context: context,
    type: AlertType.info,
    title: title,
    desc: subtitle,
    style: AlertStyle(titleStyle: bl35Style, descStyle: bl22Style),
    buttons: [
      DialogButton(
        width: 200,
        height: 70,
        child: Text(
          "ตกลง",
          style: wl35Style,
        ),
        onPressed: () => Navigator.pop(context),
        color: primaryColor,
      )
    ],
  ).show();
}

Future<void> normalDialogrequirement(
    BuildContext context, String title, String subtitle) async {
  Alert(
    context: context,
    type: AlertType.info,
    title: title,
    desc: subtitle,
    style: AlertStyle(titleStyle: bl22Style, descStyle: bl12Style),
    buttons: [
      DialogButton(
        child: Text(
          "ตกลง",
          style: wl14Style,
        ),
        onPressed: () => Navigator.pop(context),
        color: primaryColor,
      )
    ],
  ).show();
}
