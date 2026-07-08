import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../settings/setting_page.dart';

class TopSection extends StatelessWidget {
  final bool activity;
  final Function toggleActivity;

  const TopSection(this.activity, this.toggleActivity, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(4),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => toggleActivity(true),
                      child: Container(
                        decoration: BoxDecoration(
                          color: activity == true ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 30,
                        alignment: Alignment.center,
                        child: Text(
                          'Активные',
                          style: TextStyle(
                            color: activity ? Colors.white : Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => toggleActivity(false),
                      child: Container(
                        decoration: BoxDecoration(
                          color: activity ? Colors.white : Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 30,
                        alignment: Alignment.center,
                        child: Text(
                          'Сохраненные',
                          style: TextStyle(
                            color: activity ? Colors.grey : Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => SettingPage(),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(left: 15),
              height: 38,
              width: 54,
              alignment: Alignment.center,
              child: SvgPicture.asset('assets/icons/menu.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
