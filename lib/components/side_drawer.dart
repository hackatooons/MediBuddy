import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:medibuddy/blocs/auth_bloc.dart';
import 'package:medibuddy/constants/colors.dart';
import 'package:medibuddy/screens/home_screen.dart';
import 'package:medibuddy/screens/onboarding_screen.dart';
import 'package:medibuddy/screens/settings_screen.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthBloc authBloc = Provider.of<AuthBloc>(context);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              authBloc.name == "" ? "User" : authBloc.name,
              style: const TextStyle(color: kTextColor),
            ),
            accountEmail: Text(
              authBloc.email,
              style: const TextStyle(color: kTextColor),
            ),
            currentAccountPicture: GestureDetector(
                child: CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(
                authBloc.profilePicUrl == ""
                    ? "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png"
                    : authBloc.profilePicUrl,
              ),
            )),
            decoration: const BoxDecoration(
              color: kSecondaryColor,
            ),
          ),
          ListTile(
            title: Row(
              children: const <Widget>[
                Icon(Icons.dashboard_outlined),
                SizedBox(width: 10),
                Text('Dashboard'),
              ],
            ),
            onTap: () {
              String? currentRoute = ModalRoute.of(context)?.settings.name;
              if (currentRoute != HomeScreen.id) {
                Navigator.pushReplacementNamed(context, HomeScreen.id);
              }
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Row(
              children: const <Widget>[
                Icon(Icons.person_outlined),
                SizedBox(width: 10),
                Text('Profile'),
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Row(
              children: const <Widget>[
                Icon(Icons.help_outlined),
                SizedBox(width: 10),
                Text('Help'),
              ],
            ),
            onTap: () {
              launchUrlString(
                'mailto:gupta.srijan94@gmail.com?subject=MediBuddy Help',
                mode: LaunchMode.externalApplication,
              );
            },
          ),
          ListTile(
            title: Row(
              children: const <Widget>[
                Icon(Icons.settings_outlined),
                SizedBox(width: 10),
                Text('Settings'),
              ],
            ),
            onTap: () {
              Navigator.pushNamed(context, SettingsScreen.id);
            },
          ),
          ListTile(
            title: Row(
              children: const <Widget>[
                Icon(Icons.logout_outlined),
                SizedBox(width: 10),
                Text('Logout'),
              ],
            ),
            onTap: () {
              authBloc.signOut();
              Navigator.popUntil(context, (route) => route.isFirst);
              Navigator.pushReplacementNamed(context, OnBoardingPage.id);
            },
          ),
        ],
      ),
    );
  }
}
