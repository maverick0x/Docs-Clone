import 'dart:convert';

import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';
// ignore: depend_on_referenced_packages
import 'package:logger/logger.dart';

import '../../constants.dart';
import '../models/error_model.dart';
import '../models/user_model.dart';

class AuthController extends GetxController {
  final Logger _logger = Logger();
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final Client _client = Client();

  Future<ErrorModel> signInWithGoogle() async {
    ErrorModel error = ErrorModel(
      error: 'Some Error Occurred!',
      data: null,
    );
    final AuthController controller = Get.find<AuthController>();
    try {
      final user = await _googleSignIn.signIn();
      if (user != null) {
        final userAcc = UserModel(
          name: user.displayName!,
          email: user.email,
          profilePic: user.photoUrl!,
          uid: '',
          token: '',
        );

        var res = await _client.post(Uri.parse('$host/api/signup'),
            body: userAcc.toJson(),
            headers: {
              'Content-Type': 'application/json; charset=UTF-8',
            });

        switch (res.statusCode) {
          case 200:
            final newUser =
                userAcc.copyWith(uid: jsonDecode(res.body)['user']['_id']);
            error = ErrorModel(error: '', data: newUser);
            break;
          case 500:
            _logger.e(jsonDecode(res.body)['error']);
        }
      }
    } catch (e) {
      error = ErrorModel(error: e.toString(), data: null);
      controller.logger.e(e);
    }

    return error;
  }

  Logger get logger => _logger;
}
