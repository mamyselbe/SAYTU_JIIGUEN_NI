import 'package:flutter/material.dart';

class NavbarMenu extends StatelessWidget {
  const NavbarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Ndeye Selbé',
              style: TextStyle(
                  fontFamily: 'Montserrat Bold',
                  fontSize: 20,
                  color: Colors.black),
            ),
            accountEmail: const Text(
              'ndeya@email.test',
              style: TextStyle(
                  fontFamily: 'Montserrat Regular',
                  fontSize: 14,
                  color: Colors.black),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/woman_avatar.png',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
                color: Color(0xFFF62A67),
                image: DecorationImage(
                    image: AssetImage('assets/images/menu_bg.jpg'),
                    fit: BoxFit.cover)),
          ),
          ListTile(
            leading: const Icon(Icons.tips_and_updates_outlined,
                color: Color(0xFFF62A67)),
            title: const Text('Conseils et astuces',
                style:
                    TextStyle(fontFamily: 'Montserrat Medium', fontSize: 16)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.note_add, color: Color(0xFFF62A67)),
            title: const Text('Notes et observations',
                style:
                    TextStyle(fontFamily: 'Montserrat Medium', fontSize: 16)),
            onTap: () {},
          ),
          ListTile(
            leading:
                const Icon(Icons.person_pin_outlined, color: Color(0xFFF62A67)),
            title: const Text('Mes informations',
                style:
                    TextStyle(fontFamily: 'Montserrat Medium', fontSize: 16)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: Color(0xFFF62A67)),
            title: const Text('Paramètres',
                style:
                    TextStyle(fontFamily: 'Montserrat Medium', fontSize: 16)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
