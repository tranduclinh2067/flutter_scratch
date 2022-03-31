import 'package:flutter/material.dart';
import 'package:flutter_scratch/constants/colors.dart';

class EmojiText extends StatelessWidget {
  const EmojiText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: 'Sao không thử\nkhám và phá? ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: kFont,
              )),
          TextSpan(text: '🎄', style: TextStyle(fontSize: 26))
        ]),
      ),
    );
  }
}
