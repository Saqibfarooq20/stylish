import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),

            // 🔹 Title
            const Text(
              "Settings",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // 🔹 Options List
            Expanded(
              child: ListView(
                children: const [
                  SettingsTile(
                    icon: Icons.person,
                    title: "Profile",
                  ),
                  SettingsTile(
                    icon: Icons.location_on,
                    title: "Address",
                  ),
                  SettingsTile(
                    icon: Icons.shopping_bag,
                    title: "Orders",
                  ),
                  SettingsTile(
                    icon: Icons.notifications,
                    title: "Notifications",
                  ),
                  SettingsTile(
                    icon: Icons.lock,
                    title: "Privacy",
                  ),
                  SettingsTile(
                    icon: Icons.help,
                    title: "Help & Support",
                  ),
                  SettingsTile(
                    icon: Icons.logout,
                    title: "Logout",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 🔹 Reusable Tile
class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;

  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
    );
  }
}