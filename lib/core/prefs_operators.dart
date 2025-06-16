import 'package:ecommerce_besinior/locator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsOperators {
  late SharedPreferences sharedPreferences;
  PrefsOperators() {
    sharedPreferences = locator<SharedPreferences>();
  }

  saveUserData(token, userName, email) async {
    await sharedPreferences.setString('token', token);
    await sharedPreferences.setString('userName', userName);
    await sharedPreferences.setString('email', email);
    sharedPreferences.setBool('isLoggedIn', true);
  }

  getUserToken() async {
    final String? userToken = sharedPreferences.getString('token');
    if (userToken != null) {
      return userToken;
    } else {
      return null;
    }
  }

  getUserName() async {
    final String? userName = sharedPreferences.getString('userName');
    if (userName != null) {
      return userName;
    } else {
      return null;
    }
  }

  getUserEmail() async {
    final String? userEmail = sharedPreferences.getString('email');
    if (userEmail != null) {
      return userEmail;
    } else {
      return null;
    }
  }

  changeIntroState() async {
    sharedPreferences.setBool('showIntro', false);
  }

  Future<bool> getIntroState() async {
    return sharedPreferences.getBool('showIntro') ?? true;
  }

  Future<bool> getLoggedIn() async {
    return sharedPreferences.getBool('isLoggedIn') ?? false;
  }

  Future<void> logout() async {
    sharedPreferences.clear();

    sharedPreferences.setBool('showIntro', true);
  }
}
