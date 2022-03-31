import 'package:flutter/material.dart';
import 'package:flutter_scratch/constants/colors.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Container(
          margin: EdgeInsets.all(25),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: kFontLight.withOpacity(0.3), width: 1)),
          child: TextField(
            cursorColor: kAccent,
            style: TextStyle(fontSize: 20),
            decoration: InputDecoration(
                fillColor: kFontLight.withOpacity(0.1),
                filled: true,
                contentPadding: EdgeInsets.all(18),
                border: InputBorder.none,
                hintText: 'Tìm kiếm, khám phá,...',
                hintStyle: TextStyle(color: kFontLight, fontSize: 20)),
          ),
        ),
        Positioned(
            right: 45,
            top: 36,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: kAccent, borderRadius: BorderRadius.circular(8)),
              child: Image.asset('assets/icons/search.png'),
              width: 30,
            ))
      ]),
    );
  }
}
