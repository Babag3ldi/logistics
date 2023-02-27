import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:logistics/main.dart';
import 'package:logistics/page2.dart';

import 'info.dart';
import 'main_screen.dart';

class Drawer1 extends StatelessWidget {
  const Drawer1({super.key});

  @override
  Widget build(BuildContext context) {
    
    sendEmail(String recipientemail) async {
      final Email email = Email(
        body: '',
        subject: '',
        recipients: [recipientemail],
        isHTML: false,
      );
      await FlutterEmailSender.send(email);
    }

    return Drawer(
      backgroundColor: '17171f'.toColor(),
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: '1d2225'.toColor(),
            ),
            child: Image.asset('assets/trans.png'),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: const Text(
              'Home Page',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MainScreen(),
                ),
              );
            },
          ),
          Divider(
            color: Colors.white,
          ),
          ListTile(
            leading: Icon(
              Icons.train,
              color: Colors.white,
            ),
            title: const Text(
              'Transportation & Logistics',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Transports(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.share,
              color: Colors.white,
            ),
            title: const Text(
              'Share Us',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () async {
              //shareFile(link[index], title[index]);
              await FlutterShare.share(
                  title: 'Example share',
                  text: 'Logistics',
                  linkUrl: 'link',
                  chooserTitle: 'Where You Want to Share');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.send,
              color: Colors.white,
            ),
            title: const Text(
              'Contact Us',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              sendEmail('logistics2023@gmail.com');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.info_rounded,
              color: Colors.white,
            ),
            title: const Text(
              'Info',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Info(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
