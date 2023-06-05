import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

void main() {
  runApp(const MaterialApp(
    home: Welcome(),
  ));
}

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int _selectedIndex = 0;

  static const List<String> _pageTitleOptions = [
    'Ana Sayfa',
    'Kurumsal',
    'İletişim',
    'Ayarlar',
  ];

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Ana Sayfa'),
    Text('Kurumsal'),
    Text('İletişim'),
    Text('Ayarlar'),
  ];

  static const List<String> _menuItems = [
    'Ruhl',
    'Diğer',
  ];

  String _selectedMenuItem = _menuItems[0];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onMenuItemSelected(String item) {
    setState(() {
      _selectedMenuItem = item;
    });
    if (item == _menuItems[0]) {
      Navigator.pop(context); // Drawer'ı kapat
      Navigator.pushNamed(context, '/main'); // main.dart'a yönlendir
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                _selectedMenuItem,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text(_menuItems[0]),
              onTap: () {
                _onMenuItemSelected(_menuItems[0]);
              },
            ),
            ListTile(
              title: Text(_menuItems[1]),
              onTap: () {
                _onMenuItemSelected(_menuItems[1]);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(_pageTitleOptions[_selectedIndex]),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Kurumsal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'İletişim',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Ayarlar',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black, // sectigimiz ıtemın rengi degisir
        unselectedItemColor: Colors.green, // secili olmayan ıtemlerin rengi
        showUnselectedLabels: true,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}