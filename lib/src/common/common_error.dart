import 'package:flutter/cupertino.dart';
import 'package:language_flutter_application/src/common/styling.dart';

class CommonError extends StatelessWidget {
  const CommonError({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      '일시적인 오류가 발생했습니다. \n나중에 다시 시도해 주세요.',
      style: TextStyle(fontSize: FontSizes.medium),
    ));
  }
}
