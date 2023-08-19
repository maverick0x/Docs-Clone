import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';

class DocsView extends GetView {
  const DocsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.g_mobiledata,
            size: 20,
            color: Colors.blue,
          ),
          label: const Text(
            'Sign in with Google',
            style: TextStyle(
              color: kBlackColor,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: kWhiteColor,
            minimumSize: const Size(150, 50),
          ),
        ),
      ),
    );
  }
}
