import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f7),
      appBar: AppBar(
        title: Text('Настройки'),
        backgroundColor: Color.fromARGB(255, 175, 175, 241),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                settingItem(
                  icon: 'assets/icons/settings.svg',
                  title: 'Размер шрифта',
                ),
                divider(),
                settingItem(icon: 'assets/icons/camera.svg', title: 'Камера'),
                divider(),
                settingItem(
                  icon: 'assets/icons/hourglass.svg',
                  title: 'Ожидание',
                ),
                divider(),
                settingItem(
                  icon: 'assets/icons/sun.svg',
                  title: 'Экран и яркость',
                ),
                divider(),
                settingItem(
                  icon: 'assets/icons/universal.svg',
                  title: 'Универсальный доступ',
                ),
                divider(),
                settingItem(icon: 'assets/icons/wallpaper.svg', title: 'Обои'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget divider() {
    return const Padding(
      padding: EdgeInsets.only(left: 55),
      child: Divider(height: 1),
    );
  }

  Widget settingItem({required String icon, required String title}) {
    return ListTile(
      leading: SvgPicture.asset(icon, width: 28, height: 28),
      title: Text(title, style: TextStyle(fontSize: 16)),
    );
  }
}
