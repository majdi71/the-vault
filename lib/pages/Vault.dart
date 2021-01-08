import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:the_vault/pages/SharingCenter.dart';
import 'package:the_vault/pages/SecureNotes.dart';
import 'package:the_vault/pages/Vault.dart';
import 'package:the_vault/side%20bar/side%20bar.dart';
import 'Passwords.dart';
import 'Settings.dart';

class Vault extends StatelessWidget {
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        color: Colors.lightGreen[400],
      ),
      accountEmail: Text("user@exemple.com"),
      accountName: Text("User Name"),
      currentAccountPicture: CircleAvatar(
        backgroundImage: AssetImage('assets/logo.png'),
        backgroundColor: Colors.white,
      ),
    );
    final drawerItems = ListView(

      children: [

        drawerHeader,

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
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[400],
        title: Text(
          "Vault",
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Text(
            "Vault Page" ,
          ),
        ),
      ),
      floatingActionButton: SpeedDial (
        animatedIcon: AnimatedIcons.add_event,
        animatedIconTheme: IconThemeData(size: 22.0),
        // this is ignored if animatedIcon is non null
        // child: Icon(Icons.add),
        curve: Curves.bounceIn,
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        onOpen: () => print('OPENING DIAL'),
        onClose: () => print('DIAL CLOSED'),
        tooltip: 'Speed Dial',
        heroTag: 'speed-dial-hero-tag',
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black,
        elevation: 8.0,
        shape: CircleBorder(),
        children: [
          SpeedDialChild(
            child: Icon(Icons.add_a_photo_rounded),
            backgroundColor: Colors.orange,

            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => print('SECOND CHILD'),
          ),
          SpeedDialChild(
            child: Icon(Icons.note_add_rounded),
            backgroundColor: Colors.blue,

            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => print('SECOND CHILD'),
          ),
          SpeedDialChild(
            child: Icon(Icons.filter_list_alt),
            backgroundColor: Colors.green,

            labelStyle: TextStyle(fontSize: 18.0),
            onTap: () => print('THIRD CHILD'),
          ),
          SpeedDialChild(
              child: Icon(Icons.favorite),
              backgroundColor: Colors.red,

              labelStyle: TextStyle(fontSize: 18.0),
              onTap: () => print('FIRST CHILD')
          ),


        ],

      ),
      drawer: Drawer(
        child: drawerItems,
      ),

    );
   }

}
