import 'package:flutter/material.dart';
import 'package:musicplayer_flutter/screen/home/home_screen.dart';
import 'package:musicplayer_flutter/screen/settings_screen/about_screen.dart';
import 'package:musicplayer_flutter/screen/settings_screen/policy_screen.dart';
import 'package:musicplayer_flutter/screen/settings_screen/termsandcondition_screen.dart';
import 'package:musicplayer_flutter/screen/widget/favourite_screen.dart';
import 'package:musicplayer_flutter/screen/widget/most_played.dart';
import 'package:musicplayer_flutter/screen/widget/nowplaying_screen.dart';
import 'package:musicplayer_flutter/screen/widget/playlist_screen.dart';
import 'package:musicplayer_flutter/screen/widget/recently_played.dart';
import 'package:musicplayer_flutter/screen/widget/settings_screen.dart';

navigateToFavourite(BuildContext ctx) {
  Navigator.push(
    ctx,
    MaterialPageRoute(
      builder: (context) => const ScreenFavourite(),
    ),
  );
}

navigateToPlaylist(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const Screenplaylist(),
    ),
  );
}

navigateToPlyingScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const ScreenPlaying(),
    ),
  );
}

navigateToRecentlyPlayed(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const ScreenRecentlyPlayed(),
    ),
  );
}

navigateToMOstlyPlayed(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const ScreenMostlyPlayed(),
    ),
  );
}

navigateToSettings(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const ScreenSettings(),
    ),
  );
}

navigateToAboutScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const ScreenAbout(),
    ),
  );
}
navigateToPolicyScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const ScreenPolicy(),
    ),
  );
}
navigateToTermsScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const ScreenTermsAndCondition(),
    ),
  );
}
