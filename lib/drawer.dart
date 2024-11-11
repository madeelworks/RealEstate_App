import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        elevation: 10,
        width: 250,
        child: Column(
          children: [
            const DrawerHeaderWidget(),

            buildDrawerItem(
              icon: CupertinoIcons.home,
              title: 'Home',
              onTap: () {
                // Navigator.of(context).pop();

              },
            ),
            buildDrawerItem(
              icon: CupertinoIcons.book,
              title: 'Blog',
              onTap: () {
                // Navigator.of(context).pop();


              },
            ),


            buildDrawerItem(
              icon: CupertinoIcons.info_circle_fill,
              title: 'About Us',
              onTap: () {
                // Navigator.of(context).pop();


              },
            ), buildDrawerItem(
              icon: CupertinoIcons.text_bubble,
              title: 'Contact Us',
              onTap: () {
                // Navigator.of(context).pop();


              },
            ),
          ],
        ),
      ),
    );
  }

  DrawerItem buildDrawerItem({required IconData icon, required String title, required VoidCallback onTap}) {
    return DrawerItem(
      icon: icon,
      title: title,
      onTap: onTap,
    );
  }
}

// Drawer Header Widget
class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      child: Center(
        child: Row(
          children: [
            CircleAvatar(
              radius: 40,
            ),
          ],
        ),
      ),
    );
  }
}

// Drawer Item Widget for each ListTile
class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const DrawerItem({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: onTap,
    );
  }
}