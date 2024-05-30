import 'package:flutter/material.dart';
import 'package:pundiku_catatan_keuangan/pemasukan/page_pemasukan.dart';
import 'package:pundiku_catatan_keuangan/pengeluaran/page_pengeluaran.dart';
import 'package:pundiku_catatan_keuangan/settings/settings.dart'; // Import halaman pengaturan
import 'splash_screen.dart'; // Import splash screen

void main() {
  runApp(SplashScreenApp());
}

class SplashScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: Colors.blue),
        cardTheme: const CardTheme(surfaceTintColor: Colors.white),
        dialogTheme: const DialogTheme(
            surfaceTintColor: Colors.white, backgroundColor: Colors.white),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: const Text('Pundiku catatan keuanganmu',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              actions: [
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsPage()),
                    );
                  },
                ),
              ],
              bottom: setTabBar(),
            ),
            body: TabBarView(
              controller: tabController,
              children: [
                PagePemasukan(),
                PagePengeluaran(),
              ],
            ),
          ),
        );
      },
    );
  }

  TabBar setTabBar() {
    return TabBar(
      controller: tabController,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.black26,
      indicatorColor: Colors.white,
      tabs: [
        Tab(
          text: 'Pemasukan',
          icon: const Icon(Icons.archive_outlined),
        ),
        Tab(
          text: 'Pengeluaran',
          icon: const Icon(Icons.unarchive_outlined),
        ),
      ],
    );
  }
}
