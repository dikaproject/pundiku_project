import 'package:flutter/material.dart';
import 'package:pundiku_catatan_keuangan/settings/about.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isDarkMode = false; // Variabel untuk menyimpan nilai Dark Mode

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
            ListTile(
            title: const Text('Ubah Warna Background'),
            trailing: const Icon(Icons.color_lens),
            onTap: () {
              showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                title: const Text('Maintenance'),
                content: const Text('Sedang dalam tahap pengembangan\n\nBy DikaProject SMK Telkom Purwokerto\n\nHave a nice day all'),
                actions: [
                  TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'),
                  ),
                ],
                );
              },
              );
            },
            ),
            ListTile(
            title: const Text('Contact Developer'),
            trailing: const Icon(Icons.share),
            onTap: () {
              showDialog(
              context: context,
              builder: (BuildContext context) {
              return AlertDialog(
              title: const Text('Contact Developer'),
              content: const Text('Apakah Anda ingin melanjutkan ke WhatsApp?'),
              actions: [
                TextButton(
                onPressed: () {
                Navigator.of(context).pop();
                },
                child: const Text('Tidak'),
                ),
                TextButton(
                onPressed: () {
                String whatsappUrl = 'https://wa.me/6281227848422';
                },
                child: const Text('Ya'),
                ),
              ],
              );
              },
              );
            },
            ),
          ListTile(
            title: const Text('About Developer'),
            trailing: const Icon(Icons.info),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutPage()),
              );
            },
          ),
            SwitchListTile(
            title: const Text('Dark Mode'),
            value: isDarkMode,
            onChanged: (value) {
              setState(() {
              isDarkMode = value; // Perbarui nilai Dark Mode
              // Tambahkan logika untuk mengubah tema aplikasi sesuai dengan nilai Dark Mode
              });
              if (value) {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Maintenance'),
                  content: const Text('Sedang dalam tahap pengembangan\n\nBy DikaProject SMK Telkom Purwokerto\n\nHave a nice day all'),
                  actions: [
                  TextButton(
                    onPressed: () {
                    Navigator.of(context).pop();
                    },
                    child: const Text('OK'),
                  ),
                  ],
                );
                },
              );
              }
            },
            ),
        ],
      ),
    );
  }
}
