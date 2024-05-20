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
              // Tambahkan logika untuk mengubah warna background aplikasi
            },
          ),
          ListTile(
            title: const Text('Icons Sosial Media Developer'),
            trailing: const Icon(Icons.share),
            onTap: () {
              // Tambahkan logika untuk menampilkan icons sosial media developer
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
                if (isDarkMode) {
                  Theme.of(context).copyWith(brightness: Brightness.dark);
                } else {
                  Theme.of(context).copyWith(brightness: Brightness.light);
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
