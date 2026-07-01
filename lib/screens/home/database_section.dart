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
                itemCount: 100,
                itemBuilder: ((context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 242, 242, 242),
                    ),
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 60,
                          alignment: Alignment.center,
                          child: Text(
                            index.toString(),
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 1,
                          color: Colors.white,
                          margin: EdgeInsets.only(right: 20),
                        ),
                        Expanded(
                          child: Text(
                            'Описание для зикра Описание для зикра Описание для зикра Описание для зикра',
                            style: TextStyle(fontSize: 13, height: 1.2),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text(
                            '01.07.2026',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                          child: SvgPicture.asset('assets/icons/dots.svg'),
                        ),
                      ],
                    ),
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
