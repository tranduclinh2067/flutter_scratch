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
