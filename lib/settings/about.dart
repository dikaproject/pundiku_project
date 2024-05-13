import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  List<Map<String, String>> developers = [
    {
      'name': 'Rasya Dika Pratama',
      'nis': '541221182',
      'role': 'Full-stack Developer',
      'school': 'SMA Telkom Purwokerto',
    },
    {
      'name': 'Batara Raditya Wijaya',
      'nis': 'xxxxxxxxxx',
      'role': 'Back-end Developer',
      'school': 'SMA Telkom Purwokerto',
    },
    {
      'name': 'Siapa ya',
      'nis': 'xxxxxxxxxx',
      'role': 'Back-end Developer',
      'school': 'SMK Telkom Purwokerto',
    },
    {
      'name': 'Siapa ya',
      'nis': 'xxxxxxxxxx',
      'role': 'Front-end Developer',
      'school': 'SMK Telkom Purwokerto',
    },
    {
      'name': 'Siapa ya',
      'nis': 'xxxxxxxxxx',
      'role': 'Front-end Developer',
      'school': 'SMK Telkom Purwokerto',
    },
    {
      'name': 'Siapa ya',
      'nis': 'xxxxxxxxxx',
      'role': 'Dokumentary',
      'school': 'SMK Telkom Purwokerto',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Developers'),
      ),
      body: ListView.builder(
        itemCount: developers.length,
        itemBuilder: (context, index) {
          return DeveloperCard(
            name: developers[index]['name']!,
            nis: developers[index]['nis']!,
            role: developers[index]['role']!,
            school: developers[index]['school']!,
          );
        },
      ),
    );
  }
}

class DeveloperCard extends StatelessWidget {
  final String name;
  final String nis;
  final String role;
  final String school;

  const DeveloperCard({
    required this.name,
    required this.nis,
    required this.role,
    required this.school,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/megumin.jpeg'),
            ),
            SizedBox(height: 20),
            Text(
              'Nama: $name',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'NIS: $nis',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Role: $role',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Sekolah: $school',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
