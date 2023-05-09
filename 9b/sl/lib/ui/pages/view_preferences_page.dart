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
  final Future<UserPreferenceModel> _futureUserPreferenceModel =
      GetIt.I<IUserPreferencesRepository>().getUserPreference();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: FutureBuilder(
          future: _futureUserPreferenceModel,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return Column(
              children: [
                Text('Show Music: ${snapshot.data!.showMusic}'),
                const SizedBox(height: 10),
                Text('Show Video: ${snapshot.data!.showVideo}'),
                const SizedBox(height: 10),
                Text('Show Image: ${snapshot.data!.showImage}'),
                const SizedBox(height: 10),
              ],
            );
          },
        ));
  }
}
