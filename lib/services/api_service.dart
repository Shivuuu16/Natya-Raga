import 'dart:async';

class ApiService {

  /// student login
  static Future<bool> studentLogin(String phone) async {
    await Future.delayed(Duration(seconds: 2));
    print("OTP sent to student phone");
    return true;
  }

  /// instructor login
  static Future<bool> instructorLogin(String phone) async {
    await Future.delayed(Duration(seconds: 2));
    print("OTP sent to instructor phone");
    return true;
  }

  /// verify OTP
  static Future<bool> verifyOtp(String otp) async {
    await Future.delayed(Duration(seconds: 2));
    if (otp == "123456") {
      return true;
    } else {
      return false;
    }
  }
}
