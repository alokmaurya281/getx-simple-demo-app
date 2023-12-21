// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:simmpli/app/modules/login/login_model.dart';

// import '../resources/constants.dart';

// class SessionManager {

//   static late SharedPreferences prefs;

//   static Future<SharedPreferences> init() async {
//     prefs = await SharedPreferences.getInstance();
//     return prefs;
//   }

//   Future<void> setLoggedIn(bool isLogin) async {
//     prefs.setBool(isLogIn, isLogin);
//   }

//   bool isLoggedIn() {
//     return prefs.getBool(isLogIn)!;
//   }

//   Future<void> clear() async {
//     prefs.clear();
//   }

//   Future<void> setUser(LoginModel user) async {
//     prefs.setString(authToken, user.authorization!.token??"");
//     prefs.setString(email, user.user!.email??"");
//     prefs.setString(firstName, user.user!.firstName??"");
//     prefs.setString(lastName, user.user!.lastName??"");
//     prefs.setString(role, user.user!.role??"");
//     prefs.setString(profile, user.user!.currentProfile!.dpUrlSmall??"");
//     prefs.setString(userId, user.user!.id!.toString());
//     prefs.setString(profileId, user.user!.currentProfile!.id!.toString());
//     prefs.setString(fullName, user.user!.currentProfile!.fullName??"");
//     prefs.setString(designation, user.user!.currentProfile!.designation??"");
//   }

//   Future<void> setAuthToken(String authToken) async {
//     prefs.setString(authToken, authToken);
//   }

//   String? getAuthToken() {
//     return prefs.getString(authToken);
//   }

//   Future<void> setEmail(String email) async {
//     prefs.setString(email, email);
//   }

//   String? getEmail() {
//     return prefs.getString(email);
//   }

//   Future<void> setFirstName(String firstName) async {
//     prefs.setString(firstName, firstName);
//   }

//   String? getFirstName() {
//     return prefs.getString(firstName);
//   }

//   Future<void> setLastName(String lastName) async {
//     prefs.setString(lastName, lastName);
//   }

//   String? getLastName() {
//     return prefs.getString(lastName);
//   }

//   Future<void> setRole(String role) async {
//     prefs.setString(role, role);
//   }

//   String? getRole() {
//     return prefs.getString(role);
//   }

//   Future<void> setProfile(String image) async {
//     prefs.setString(profile, image);
//   }

//   String? getProfile() {
//     return prefs.getString(profile);
//   }

//   Future<void> setUserId(String id) async {
//     prefs.setString(userId, id);
//   }

//   String? getUserId() {
//     return prefs.getString(userId);
//   }

//   Future<void> setProfileId(String id) async {
//     prefs.setString(profileId, id);
//   }

//   String? getProfileId() {
//     return prefs.getString(profileId);
//   }

//   Future<void> setFullName(String fullName) async {
//     prefs.setString(fullName, fullName);
//   }

//   String? getFullName() {
//     return prefs.getString(fullName);
//   }

//   Future<void> setDesignation(String designations) async {
//     prefs.setString(designation, designations);
//   }

//   String? getDesignation() {
//     return prefs.getString(designation);
//   }
// }