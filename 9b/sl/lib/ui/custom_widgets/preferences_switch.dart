import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PreferencesSwitch extends StatelessWidget {
  final ValueNotifier valueNotifier;
  final String title;
  const PreferencesSwitch(
      {super.key, required this.valueNotifier, required this.title});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: valueNotifier,
      builder: (context, value, child) {
        return SwitchListTile(
            title: Text(title),
            value: value,
            onChanged: (v) {
              valueNotifier.value = v;
            });
      },
    );
  }
}
