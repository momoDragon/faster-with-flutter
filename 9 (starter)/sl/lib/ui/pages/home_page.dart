import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get_it/get_it.dart';
import 'package:sl/models/user_preference_model.dart';
import 'package:sl/repository/user_preferences_repository.dart';
import 'package:sl/ui/custom_widgets/preferences_switch.dart';
import 'package:sl/ui/pages/view_preferences_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ValueNotifier _showMusic = ValueNotifier(false);
  final ValueNotifier _showVideo = ValueNotifier(false);
  final ValueNotifier _showImage = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          PreferencesSwitch(valueNotifier: _showMusic, title: 'Show Music'),
          const SizedBox(height: 10),
          PreferencesSwitch(valueNotifier: _showVideo, title: 'Show Video'),
          const SizedBox(height: 10),
          PreferencesSwitch(valueNotifier: _showImage, title: 'Show Image'),
          const SizedBox(height: 10),
          TextButton(
              onPressed: () {
                GetIt.I<IUserPreferencesRepository>().saveUserPreference(
                    UserPreferenceModel(
                        showMusic: _showMusic.value,
                        showVideo: _showVideo.value,
                        showImage: _showImage.value));

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ViewPreferencesPage()));
              },
              child: const Text('Save and View Preferences'))
        ],
      ),
    );
  }
}
