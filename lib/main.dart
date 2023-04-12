import 'package:beamer/beamer.dart';
import 'package:carrot_market_clone/router/locations.dart';
import 'package:carrot_market_clone/screens/splash_screen.dart';
import 'package:carrot_market_clone/utils/logger.dart';
import 'package:flutter/material.dart';

final _routerDelegate = BeamerDelegate(
//     guards: [
//   BeamGuard(
//       pathPatterns: ['/'],
//       check: (BuildContext context, BeamLocation location) {
//         return true;
//       },
//       showPage: BeamPage(child: HomeScreen()))
// ],
    locationBuilder: BeamerLocationBuilder(beamLocations: [HomeLocation()]));

void main() {
  logger.d('message');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 3), () => 100),
      builder: (context, snapshot) {
        return AnimatedSwitcher(
            duration: (const Duration(microseconds: 3)),
            child: _splshLoadingWidget(snapshot));
      },
    );
  }

  StatelessWidget _splshLoadingWidget(AsyncSnapshot<Object?> snapshot) {
    if (snapshot.hasError) {
      print('error occur while loading.');
      return const Text('Error occur');
    } else if (snapshot.hasData) {
      return const CarrotApp();
    } else {
      return const SplashScreen();
    }
  }
}

class CarrotApp extends StatelessWidget {
  const CarrotApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: BeamerParser(),
      routerDelegate: _routerDelegate,
    );
  }
}
