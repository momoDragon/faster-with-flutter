import 'package:flutter/material.dart';

class CustomSnackBar {
  CustomSnackBar.fromException(
      {required BuildContext context, required Exception exception}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          backgroundColor: Colors.red, content: Text(exception.toString())),
    );
  }
  CustomSnackBar.fromErrorResponseBody(
      {required BuildContext context, required int statusCode}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: Colors.red,
      content: Text('API ERROR: $statusCode'),
    ));
  }

  CustomSnackBar.success(
      {required BuildContext context, required String text}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(backgroundColor: Colors.green, content: Text(text)),
    );
  }

  CustomSnackBar.fromErrorMessage(
      {required BuildContext context, required String message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(backgroundColor: Colors.red, content: Text(message)),
    );
  }

  CustomSnackBar.genericError({required BuildContext context}) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
          backgroundColor: Colors.red, content: Text('An Error Occured')),
    );
  }

  CustomSnackBar.coppiedToClipboard({required BuildContext context}) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
          backgroundColor: Colors.green,
          content:  Text('coppied to clipboard')),
    );
  }
}
