import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get_it/get_it.dart';
import 'package:sl/models/user_preference_model.dart';
import 'package:sl/repository/user_preferences_repository.dart';

class ViewPreferencesPage extends StatefulWidget {
  const ViewPreferencesPage({super.key});

  @override
  State<ViewPreferencesPage> createState() => _ViewPreferencesPageState();
}

class _ViewPreferencesPageState extends State<ViewPreferencesPage> {
  late final UserPreferenceModel _userPreferenceModel;

  @override
  void initState() {
    _userPreferenceModel =
        GetIt.I<IUserPreferencesRepository>().getUserPreference();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          Text('Show Music: ${_userPreferenceModel.showMusic}'),
          const SizedBox(height: 10),
          Text('Show Video: ${_userPreferenceModel.showVideo}'),
          const SizedBox(height: 10),
          Text('Show Image: ${_userPreferenceModel.showImage}'),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
