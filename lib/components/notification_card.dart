import 'package:flutter/material.dart';
import 'package:medibuddy/constants/colors.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    Key? key,
    required this.title,
    this.subtitle,
  }) : super(key: key);

  final String title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: ListTile(
        leading: const Icon(Icons.medication_outlined),
        title: Text(title),
        subtitle: Text(
          subtitle ?? '',
          style: const TextStyle(
            color: kTextColor,
          ),
        ),
      ),
    );
  }
}
