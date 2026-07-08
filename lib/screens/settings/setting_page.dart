import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Настройки приложения')),
      body: Column(
        children: [
          Text('Настройка шрифтов'),
          Text('Настройка цвета текста'),
          Text('Настройка цвета фона'),
        ],
      ),
    );
  }
}
