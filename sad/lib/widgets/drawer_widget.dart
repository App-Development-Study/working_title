import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 10.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          bottomLeft: Radius.circular(16.0),
        ),
      ),
      // Drawer에 표시할 내용 추가
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 250.0,
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  '함범준',
                  style: TextStyle(color: Colors.white),
                ),
                accountEmail: Text(
                  'hbj0802@naver.com',
                  style: TextStyle(color: Colors.white),
                ),
                currentAccountPicture: CircleAvatar(
                    // backgroundImage: AssetImage('assets/images/profileEx.png'),

                    ),
                decoration: BoxDecoration(
                  color: Color(0xFF141c37),
                  // gradient: LinearGradient(
                  //   begin: Alignment.centerLeft,
                  //   end: Alignment.centerRight,
                  //   colors: [
                  //     Colors.white,
                  //     Color(0xFF141c37),
                  //   ],
                  // ),
                  // color: Color(0xFF141c37),
                ),
                // 현재 유저 프로필사진 크기
                currentAccountPictureSize: Size.square(80),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Color(0xFF041c37),
              ),
              title: const Text('홈'),
              onTap: () {
                // 메뉴 1을 눌렀을 때 수행할 동작 추가
                Navigator.pop(context); // Drawer 닫기
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.account_circle_rounded,
                color: Color(0xFF141c37),
              ),
              title: const Text('내 프로필'),
              onTap: () {
                // 메뉴 2를 눌렀을 때 수행할 동작 추가
                Navigator.pop(context); // Drawer 닫기
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Color(0xFF141c37),
              ),
              title: const Text('설정'),
              onTap: () {
                // 메뉴 2를 눌렀을 때 수행할 동작 추가
                Navigator.pop(context); // Drawer 닫기
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.info,
                color: Color(0xFF141c37),
              ),
              title: const Text('About Us'),
              onTap: () {
                // 메뉴 2를 눌렀을 때 수행할 동작 추가
                Navigator.pop(context); // Drawer 닫기
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Color(0xFF141c37),
              ),
              title: const Text('로그아웃'),
              onTap: () {
                // 메뉴 2를 눌렀을 때 수행할 동작 추가
                Navigator.pop(context); // Drawer 닫기
              },
            ),
            // 추가적인 Drawer 항목들을 원하는 만큼 추가할 수 있습니다.
          ],
        ),
      ),
    );
  }
}
