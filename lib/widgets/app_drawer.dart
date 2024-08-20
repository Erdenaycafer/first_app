import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        shape: Border.all(style: BorderStyle.solid, color: Colors.transparent),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 37, 37, 39),
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.category_outlined),
              title: const Text('Shop by Categories'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.timelapse_outlined),
              title: const Text('My Orders'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.favorite_outline_rounded),
              title: const Text('Favourites'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.question_answer_outlined),
              title: const Text('FAQs'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Addresses'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.credit_card_outlined),
              title: const Text('Saved Cards'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.edit_document),
              title: const Text('Terms & Conditions'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip_outlined),
              title: const Text('Privacy Policy'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout_outlined),
              title: const Text('Logout'),
              onTap: () {
                FirebaseAuth.instance.signOut();
                Scaffold.of(context).closeDrawer();
              },
            ),
          ],
        ),
      );
  }
}