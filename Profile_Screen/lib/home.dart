import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/info_profile.dart';

class NavigationBarLager extends StatefulWidget {
  const NavigationBarLager({super.key});

  @override
  State<NavigationBarLager> createState() => _NavigationBarLagerState();
}

class _NavigationBarLagerState extends State<NavigationBarLager> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  const CupertinoSliverNavigationBar(
                    border:
                        Border(bottom: BorderSide(color: Colors.transparent)),
                    backgroundColor: Colors.white,
                    largeTitle: Text(
                      "Cá nhân",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1F2D3D)),
                    ),
                  )
                ],
            body: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InfoProfile()));
              },
              child: Column(
                children: [
                  Container(
                    height: 68,
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF7F9FB),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: SizedBox(
                                width: 44,
                                height: 44,
                                child: Image.asset(
                                    "assets/images/img_profile.png"),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Nguyễn văn A",
                                  style: TextStyle(
                                      height: 1.5,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF1F2D3D)),
                                ),
                                Text(
                                  "Quản trị viên",
                                  style: TextStyle(
                                      height: 1.67,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: SizedBox(
                                width: 20,
                                height: 20,
                                child: Image.asset(
                                    "assets/images/img_arrow_right.png"),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
