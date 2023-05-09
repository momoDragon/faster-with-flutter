import 'dart:convert';

import 'package:hive_flutter/hive_flutter.dart';
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

class NewUserPreferencesRepository implements IUserPreferencesRepository {
  final String _boxName = 'userPreferenceBox';
  final String _userPreferenceKey = 'userPreference';
  Box<String>? _box;

  NewUserPreferencesRepository() {
    _openBox();
  }

  Future<void> _openBox() async {
    if (_box != null) return;
    _box = await Hive.openBox<String>(_boxName);
  }

  @override
  Future<UserPreferenceModel> getUserPreference() async {
    await _openBox();
    String? userPreferenceString = _box!.get(_userPreferenceKey);

    if (userPreferenceString != null) {
      return UserPreferenceModel.fromJson(jsonDecode(userPreferenceString));
    } else {
      UserPreferenceModel userPreferenceModel = const UserPreferenceModel(
          showMusic: false, showVideo: false, showImage: false);
      await saveUserPreference(userPreferenceModel);
      return userPreferenceModel;
    }
  }

  @override
  Future<void> saveUserPreference(
      UserPreferenceModel userPreferenceModel) async {
    await _openBox();
    _box!.put(_userPreferenceKey, jsonEncode(userPreferenceModel.toJson()));
  }
}
