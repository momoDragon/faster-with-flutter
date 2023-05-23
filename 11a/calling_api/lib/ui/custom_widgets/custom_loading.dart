import 'package:flutter/material.dart';

class CustomLoadingDialog {
  static loading({required BuildContext context}) {
    CustomLoadingDialog.loadingWithLable(
        context: context, lable: 'Please Wait');
  }

  static loadingWithLable(
      {required BuildContext context, required String lable}) {
    showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      useRootNavigator: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                    Flexible(child: Text(lable)),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static Future<void> success(
      {required BuildContext context,
      Duration duration = const Duration(seconds: 2),
      required Function afterComplete}) async {
    showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      useRootNavigator: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          content: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const Center(
                        child:
                            Icon(Icons.check_circle_outline_outlined, size: 35),
                      ),
                    ),
                    const Text('Success'),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );

    await Future.delayed(duration);
    afterComplete();
  }
}
