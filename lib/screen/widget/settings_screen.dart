import 'package:flutter/material.dart';
import 'package:musicplayer_flutter/const_files/color_const.dart';
import 'package:musicplayer_flutter/functions/navigate_functions/navigate_functions.dart';

class ScreenSettings extends StatelessWidget {
  const ScreenSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        title: const Text(
          'Settings',
          style: TextStyle(color: secondaryCOlor),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: secondaryCOlor,
          ),
        ),
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
                  children: [
            const SizedBox(height: 30,),
            ListTile(
              onTap: () =>navigateToAboutScreen(context),
              title: const Text(
                'About',
                style: TextStyle(color: secondaryCOlor),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () => navigateToPolicyScreen(context),
              title: const Text(
                'Privacy And Policy',
                style: TextStyle(color: secondaryCOlor),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              onTap: () => navigateToTermsScreen(context),
              title: const Text(
                'Terms And Condition',
                style: TextStyle(color: secondaryCOlor),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
                  ],
                ),
          )),
    );
  }
}
