import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:sl/models/user_preference_model.dart';

abstract class IUserPreferencesRepository {
  Future<UserPreferenceModel> getUserPreference();
  Future<void> saveUserPreference(UserPreferenceModel userPreferenceModel);
}

class UserPreferencesRepository implements IUserPreferencesRepository {
  final String _storageKey = 'userPreference';

  @override
  Future<UserPreferenceModel> getUserPreference() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? userPreferencesString = prefs.getString(_storageKey);

// if the string is not null, then descerilize and return user preferences model
    if (userPreferencesString != null) {
      return UserPreferenceModel.fromJson(jsonDecode(userPreferencesString));
    } else {
      // if no user preferences stored yet, we will save a default value and return it
      UserPreferenceModel userPreferenceModel = const UserPreferenceModel(
          showMusic: false, showVideo: false, showImage: false);
      await saveUserPreference(userPreferenceModel);
      return userPreferenceModel;
    }
  }

  @override
  Future<void> saveUserPreference(
      UserPreferenceModel userPreferenceModel) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(_storageKey, json.encode(userPreferenceModel.toJson()));
  }
}

// class NewUserPreferencesRepository implements IUserPreferencesRepository {
//   UserPreferenceModel _userPreferenceModel =
//       UserPreferenceModel(showMusic: false, showVideo: false, showImage: false);
//   @override
//   UserPreferenceModel getUserPreference() {
//     return _userPreferenceModel;
//   }

//   @override
//   void saveUserPreference(UserPreferenceModel userPreferenceModel) {
//     // _userPreferenceModel = userPreferenceModel;
//   }
// }
