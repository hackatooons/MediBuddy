import 'package:flutter/material.dart';
import 'package:medibuddy/constants/colors.dart';
import 'package:share_plus/share_plus.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 5,
      color: kPrimaryColor,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: <Widget>[
            IconButton(
              tooltip: 'Open navigation menu',
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
            const Spacer(),
            IconButton(
              tooltip: 'Share',
              icon: const Icon(Icons.share),
              onPressed: () => _onShare(context),
            ),
            IconButton(
              tooltip: 'Search',
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  void _onShare(BuildContext context) async {
    final box = context.findRenderObject() as RenderBox?;

    await Share.share(
        'Check out latest version of MediBuddy app\nhttps://github.com/hackatooons/MediBuddy/releases',
        subject: 'Medibuddy App Release',
        sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
  }
}
