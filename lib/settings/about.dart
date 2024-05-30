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
      'imagePath': 'assets/rasya.png',
    },
    {
      'name': 'Batara Raditya Wijaya',
      'nis': '541221054',
      'role': 'Back-end Developer',
      'school': 'SMA Telkom Purwokerto',
      'imagePath': 'assets/batara.png',
    },
    {
      'name': 'Rafi Oktarino Ramadhan',
      'nis': '541221176',
      'role': 'Back-end Developer',
      'school': 'SMA Telkom Purwokerto',
      'imagePath': 'assets/rafi.png',
    },
    {
      'name': 'Latief Ady Prasetyo',
      'nis': '541221127',
      'role': 'Dokumentasi',
      'school': 'SMA Telkom Purwokerto',
      'imagePath': 'assets/latief.png',
    },
    {
      'name': 'Hanum Fadiyanti',
      'nis': '541221109',
      'role': 'Front-end Developer',
      'school': 'SMA Telkom Purwokerto',
      'imagePath': 'assets/hanum.png',
    },
    {
      'name': 'Wafiq Azizah',
      'nis': '541221209',
      'role': 'Front-end Developer',
      'school': 'SMA Telkom Purwokerto',
      'imagePath': 'assets/zizi.png',
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
            imagePath: developers[index]['imagePath']!,
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
  final String imagePath;

  const DeveloperCard({
    required this.name,
    required this.nis,
    required this.role,
    required this.school,
    required this.imagePath,
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
              backgroundImage: AssetImage(imagePath),
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
