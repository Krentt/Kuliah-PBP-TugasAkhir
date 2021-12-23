import 'package:flutter/material.dart';
import '../screens/custom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  late Widget _scafBody;
  late String _scafTitle;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final Map<String, Widget> _drawerPage = {
    'customize': const Custom(),
  };

  final Map<String, String> _titles = {
    'home': "Tugas Akhir PBP-C07",
    'wishlist': 'Wishlist',
    'cart': 'Shopping Cart',
    'customize': 'Customize Masker',
    'products': 'Products'
  };

  void _drawerTap(String page) {
    setState(() {
      _scafBody = _drawerPage[page] as Widget;
      _scafTitle = _titles[page].toString();
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PBP-C07',
      theme: ThemeData(
        primaryColor: Colors.white,
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.black)),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // '/products: (context) => const ProductPage(),
        '/custom': (context) => Custom()
      },
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Tugas Akhir PBP-C07"),
          backgroundColor: Colors.black,
        ),
        body: Container(), // home page taro sini
        drawer:Builder(builder: (context) => Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Center(
                  child: Text(
                    "Welcome, user",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              ListTile(
                title: const Text("Home"),
                onTap: () {
                  // do stuff
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Products"),
                onTap: () {
                  // do stuff
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Wishlist"),
                onTap: () {
                  // do stuff
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Customize Masker"),
                onTap: () {
                  // do stuff
                  _drawerTap("customize");
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),),

        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Products',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
