import 'package:flutter/material.dart';
import 'package:project/screen/home.dart';
import 'package:project/screen/profile_screen.dart';
import 'package:project/screen/chat_screen.dart';
import 'package:project/screen/form_screen.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  Widget app = ExtentGridView();
  runApp(app);
}

// ignore: must_be_immutable
class ExtentGridView extends StatelessWidget {
  final List<Widget> screen = const [
    HomeScreen(),
    FormScreen(),
    ChatScreen(),
    ProfileScreen(),
  ];
  var screenIndex = 0.obs;
  ExtentGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Obx(
        () => Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Container(
                  width: 380,
                  alignment: Alignment.centerLeft,
                  child: Text('Bansal MediaGram'),
                ),
                Column(
                  children: [
                    Icon(
                      Icons.logout_rounded,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                    Text(
                      'Logout',
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
            centerTitle: true,
          ),
          body: Center(
            child: SingleChildScrollView(
              child: Container(
                child: screen[screenIndex.value],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 6, 185, 176),
            selectedItemColor: Color.fromARGB(255, 0, 45, 48),
            unselectedItemColor: Color.fromARGB(255, 0, 103, 110),
            currentIndex: screenIndex.value,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.manage_search_sharp,
                  ),
                  label: "Form"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.message_sharp,
                  ),
                  label: "Chat"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: "Profile"),
            ],
            onTap: (value) {
              screenIndex.value = value;
            },
          ),
        ),
      ),
    );
  }
}
