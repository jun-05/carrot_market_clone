import 'package:carrot_market_clone/utils/logger.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            '캐럿 마켓',
            style: TextStyle(
                fontSize: 38, color: Colors.red, fontWeight: FontWeight.bold),
          ),
          ExtendedImage.asset('assets/imgs/carrot_intro.png'),
          Text('우리 동네 중고 직거래 캐럿마켓',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22)),
          Text('''캐럿 마켓은 동네 직거래 마켓이에요.
  내 동네를 설정하고 시작해보세요. ''',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextButton(
                  onPressed: () {
                    logger.d('on text button Clicked');
                  },
                  child: Text('내 동네 설정하고 시작하기',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                  )),
            ],
          ),
        ],
      ),
    ));
  }
}
