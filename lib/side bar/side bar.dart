import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:the_vault/login.dart';
import 'package:the_vault/pages/Passwords.dart';
import 'package:the_vault/pages/SharingCenter.dart';
import 'package:the_vault/pages/SecureNotes.dart';
import 'package:the_vault/pages/Settings.dart';
import 'package:the_vault/pages/Vault.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
            color: Colors.lightGreen[400],
            ),
            accountEmail: Text("user@exemple.com"),
            accountName: Text("User Name"),
            currentAccountPicture: CircleAvatar(
            backgroundImage: AssetImage('assets/logo.png'),
            backgroundColor: Colors.white,
          ),
        ),
          ListTile(
            title: Text(
            "Passwords" ,
          ),
            leading: const Icon(Icons.vpn_key),
            onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => Passwords()));
          },
        ),
          ListTile(
            title: Text(
            "Secure Notes",
            ),
            leading: const Icon(Icons.note),
            onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => SecureNoteS()));
          },
        ),
          ListTile(
            title: Text(
            "Vault",
            ),
            leading: const Icon(Icons.wallet_travel),
            onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => Vault()));
          },
        ),
          ListTile(

            title: Text(
            "Sharing Center",
            ),

            leading: const Icon(Icons.person_add_rounded),
            onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => SharingCenter()));
          },
        ),
          ListTile(

            title: Text(
            "Settings",
            ),
            leading: const Icon(Icons.settings),
            onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => Settings()));
                  },
                ),
               ],
             ),
            ),
          );
    }
  }