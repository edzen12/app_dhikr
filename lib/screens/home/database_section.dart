import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DatabaseSection extends StatelessWidget {
  const DatabaseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          color: Colors.white,
        ),
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Последние сохраненные зикры',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              width: 60,
              height: 2,
              color: Colors.blue,
              margin: EdgeInsets.only(top: 3, bottom: 20),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Row(),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
