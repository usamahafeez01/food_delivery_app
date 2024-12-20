import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefferenceHelper{

  static String userIDKey="USERKEY";
  static String userNameKey="USERNAMEKEY";
  static String wallet="USERKEY";
  static String userEmailKey="USEREMAILKEY";
  static String userWalletKey="USEREWALLETKEY";
  static String userProfileKey="USEREPROFILEKEY";


  Future<bool> SaveUserId(String getUserId)async{
SharedPreferences prefs=await SharedPreferences.getInstance();
return prefs.setString(userIDKey, getUserId);

  }
  Future<bool> SaveUserName(String getUserName)async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.setString(userNameKey, getUserName);

  }
  Future<bool> SaveUserEmail(String getUserEmail)async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.setString(userEmailKey, getUserEmail);

  }
  Future<bool> SaveUserWallet(String getUserWallet)async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.setString(userWalletKey, getUserWallet);

  }
  Future<bool> SaveUserProfile(String getProfile)async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.setString(userProfileKey, getProfile);

  }
  Future<String?> getUserId()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.getString(userIDKey);

}
  Future<String?> getUserName()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.getString(userNameKey);

  }
  Future<String?> getUserEmail()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.getString(userEmailKey);

  }
  Future<String?> getUserWallet()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.getString(userWalletKey);

  }
  Future<String?> getUserProfile()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.getString(userProfileKey);

  }


}