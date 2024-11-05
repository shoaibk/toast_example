import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _showToast() {
    Fluttertoast.showToast(
      msg: "Hello, this is a toast message!",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.black54,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FloatingActionButton with Toast"),
      ),
      body: const Center(
        child: Text("Press the FloatingActionButton"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showToast,
        child: const Icon(Icons.message),
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            ListTile(
              title: Text("Home"),
            ),
            ListTile(
              title: Text("Settings"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
