import 'dart:io';

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

class DcAlertDialog extends StatelessWidget {
  final String title;
  final Widget? content;
  final String? cancelText;
  final String? okText;
  final VoidCallback? onOk;
  final VoidCallback? onCancel;

  const DcAlertDialog({
    Key? key,
    required this.title,
    this.content,
    this.okText,
    this.cancelText,
    this.onOk,
    this.onCancel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleWidget = Center(
      child: Text(
        title,
        style: context.fontsTheme.dcBodyLarge,
      ),
    );
    Widget okButton = TextButton(
      onPressed: onOk ??
          () {
            Navigator.pop(context);
          },
      child: Text(
        okText ?? '',
        style: context.fontsTheme.dcBodyMedium,
      ),
    );
    Widget cancelButton = TextButton(
      onPressed: onCancel ??
          () {
            Navigator.pop(context);
          },
      child: Text(
        cancelText ?? '',
        style: context.fontsTheme.dcBodyMedium,
      ),
    );
    if (Platform.isAndroid || Platform.isIOS) {
      return AlertDialog(
        alignment: Alignment.center,
        title: titleWidget,
        content: content,
        actions: <Widget>[
          if (onOk != null) okButton,
          if (onCancel != null) cancelButton,
        ],
      );
    }
    // if (Platform.isIOS) {
    //   return CupertinoAlertDialog(
    //     title: titleWidget,
    //     content: content,
    //     actions: <Widget>[
    //       okButton,
    //       if (onCancel != null) cancelButton,
    //     ],
    //   );
    // }
    return Container();
  }

  static Future<void> show({
    required BuildContext context,
    required String title,
    Widget? content,
    VoidCallback? onOk,
    VoidCallback? onCancel,
    VoidCallback? onComplete,
  }) async {
    await showDialog(
      context: context,
      builder: (context) {
        return DcAlertDialog(
          title: title,
          content: content,
          onOk: onOk,
          onCancel: onCancel,
        );
      },
    ).whenComplete(() => onComplete);
  }
}
