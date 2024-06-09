import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  String title;
  String subtitle;
  IconData icon;
  SettingsCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(
            icon,
          ),
        ),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(
          CupertinoIcons.arrow_down_circle_fill,
        ),
      ),
    );
  }
}
