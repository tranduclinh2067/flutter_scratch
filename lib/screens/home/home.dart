import 'package:flutter/material.dart';
import 'package:flutter_scratch/constants/colors.dart';
import 'package:flutter_scratch/screens/home/Widget/active_course.dart';
import 'package:flutter_scratch/screens/home/Widget/emoji_text.dart';
import 'package:flutter_scratch/screens/home/Widget/feature_course.dart';
import 'package:flutter_scratch/screens/home/Widget/search_input.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            EmojiText(),
            SearchInput(),
            FeatureCourse(),
            ActiveCourse()
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
      // https://www.youtube.com/watch?v=JBi6egHotVY&t=14s
      // 8:16
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kBackground,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: 'Trang chủ',
          icon: Container(
            padding: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
                border: Border(bottom: BorderSide(color: kAccent, width: 2))),
            child: Text(
              'Trang chủ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        BottomNavigationBarItem(
          label: 'Lịch',
          icon: Image.asset(
            'assets/icons/calendar.png',
            width: 30,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Lưu trữ',
          icon: Image.asset(
            'assets/icons/bookmark.png',
            width: 30,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Người dùng',
          icon: Image.asset(
            'assets/icons/user.png',
            width: 30,
          ),
        ),
      ],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: kBackground,
      elevation: 0,
      centerTitle: false,
      title: const Padding(
        padding: EdgeInsets.only(left: 12),
        child: Text(
          'Chào Lĩnh!',
          style: TextStyle(fontSize: 20, color: kFontLight),
        ),
      ),
      actions: [
        Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10, right: 27),
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border:
                      Border.all(color: kFontLight.withOpacity(0.3), width: 2),
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                'assets/icons/notification.png',
                width: 25,
              ),
            ),
            Positioned(
              top: 15,
              right: 32,
              child: Container(
                height: 8,
                width: 8,
                decoration:
                    const BoxDecoration(color: kAccent, shape: BoxShape.circle),
              ),
            )
          ],
        )
      ],
    );
  }
}
