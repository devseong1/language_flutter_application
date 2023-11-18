import 'package:flutter/cupertino.dart';

import 'styling.dart';

class CommonEmpty extends StatelessWidget {
  const CommonEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '목록이 없습니다.',
        style: TextStyle(fontSize: FontSizes.medium),
      ),
    );
  }
}
