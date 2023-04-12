import 'package:beamer/beamer.dart';
import 'package:carrot_market_clone/screens/auth_screen.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeLocation extends BeamLocation {
  @override
  List<BeamPage> buildPages(
      BuildContext context, RouteInformationSerializable state) {
    return [BeamPage(child: AuthScreen(), key: ValueKey('home'))];
  }

  @override
  List<Pattern> get pathPatterns => ['/'];
}
