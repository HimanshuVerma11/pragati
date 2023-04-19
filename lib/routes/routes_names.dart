import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pragati/routes/routes_constants.dart';
import 'package:pragati/screens/business_profile.dart';
import 'package:pragati/screens/home_page.dart';
import 'package:pragati/screens/buss_profile_screen.dart';
import 'package:pragati/screens/settings_screen.dart';
import 'package:pragati/screens/main_page.dart';

class MyAppRouter {
  final GoRouter route = GoRouter(
    routes: [
      GoRoute(
        name: MyAppRoutesConstants.mainPageRouteName,
        path: '/',
        pageBuilder: (context, state) {
          return MaterialPage(child: MainPage());
        },
      ),
      GoRoute(
        name: MyAppRoutesConstants.homeRouteName,
        path: '/HomePage',
        pageBuilder: (
          context,
          state,
        ) {
          return MaterialPage(child: HomePage());
        },
      ),
      GoRoute(
        name: MyAppRoutesConstants.bussProfilePageRouteName,
        path: '/BusinessScreen',
        pageBuilder: (context, state) {
          return MaterialPage(child: BussProfilePage());
        },
      ),
      GoRoute(
        name: MyAppRoutesConstants.settingsPageRouteName,
        path: '/SettingsScreen',
        pageBuilder: (context, state) {
          return MaterialPage(child: SettingsPage());
        },
      ),
      GoRoute(
        name: MyAppRoutesConstants.businessProfile,
        path: '/BusinessProfileScreen',
        pageBuilder: (context, state) {
          return MaterialPage(child: BusinessProfile());
        },
      ),
    ],
  );
}
