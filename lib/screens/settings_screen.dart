import 'package:flutter/material.dart';
import 'package:medibuddy/screens/license_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);
  static const id = 'settings';

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkModeEnabled = false;

  void toggleDarkMode(bool value) {
    setState(() {
      isDarkModeEnabled = !isDarkModeEnabled;
      print(isDarkModeEnabled);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        physics: const ClampingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        children: <Widget>[
          // ListTile(
          //   title: Text('Use Dark Mode'),
          //   trailing: Switch(
          //     value: isDarkModeEnabled,
          //     onChanged: toggleDarkMode,
          //   ),
          // ),
          // const Divider(
          //   height: 1,
          // ),
          ListTile(
            title: Text('Licenses'),
            onTap: () {
              Navigator.pushNamed(context, LicenseScreen.id);
            },
          ),
          const Divider(
            height: 1,
          ),
          ListTile(
            title: const Text('About'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Privacy Policy'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Terms of Service'),
            onTap: () {},
          ),
          // ListTile(
          //   title: const Text('Logout'),
          //   onTap: () {
          //     Navigator.pushNamed(context, 'logout');
          //   },
          // ),
        ],
      ),
    );
  }
}
