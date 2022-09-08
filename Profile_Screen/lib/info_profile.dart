import 'package:flutter/material.dart';

class InfoProfile extends StatelessWidget {
  const InfoProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset(
                "assets/images/img_arrow_left.png",
                width: 24,
                height: 24,
              )),
          backgroundColor: Colors.white,
          title: const Text(
            "Thông tin cá nhân",
            style: TextStyle(
                height: 1.5,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF1F2D3D)),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: "Họ và tên",
                              style: TextStyle(
                                  height: 1.57,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF5A6B81))),
                          TextSpan(
                              text: "*",
                              style: TextStyle(
                                  height: 1.57,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFFEB5757)))
                        ])),
                        const SizedBox(height: 4),
                        const Text("Nguyễn Văn A",
                            style: TextStyle(
                                height: 1.5,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF1F2D3D))),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 1,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Vị trí",
                            style: TextStyle(
                                height: 1.57,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF5A6B81))),
                        const SizedBox(height: 4),
                        const Text("Quản trị viên",
                            style: TextStyle(
                                height: 1.5,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF5A6B81))),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          height: 1,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Column(
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        width: MediaQuery.of(context).size.width - 32,
                        height: 48,
                        decoration: BoxDecoration(
                            color: const Color(0xFFECEFF4),
                            borderRadius: BorderRadius.circular(4)),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text("Lưu lại",
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFA0B0C0))),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
