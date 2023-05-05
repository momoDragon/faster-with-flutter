import 'package:sl/models/user_preference_model.dart';

abstract class IUserPreferencesRepository {
  UserPreferenceModel getUserPreference();
  void saveUserPreference(UserPreferenceModel userPreferenceModel);
}

class UserPreferencesRepository implements IUserPreferencesRepository {
  UserPreferenceModel _userPreferenceModel =
      UserPreferenceModel(showMusic: false, showVideo: false, showImage: false);
  @override
  UserPreferenceModel getUserPreference() {
    return _userPreferenceModel;
  }

  @override
  void saveUserPreference(UserPreferenceModel userPreferenceModel) {
    _userPreferenceModel = userPreferenceModel;
  }
}

class NewUserPreferencesRepository implements IUserPreferencesRepository {
  UserPreferenceModel _userPreferenceModel =
      UserPreferenceModel(showMusic: false, showVideo: false, showImage: false);
  @override
  UserPreferenceModel getUserPreference() {
    return _userPreferenceModel;
  }

  @override
  void saveUserPreference(UserPreferenceModel userPreferenceModel) {
    // _userPreferenceModel = userPreferenceModel;
  }
}
