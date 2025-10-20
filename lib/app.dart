import 'package:car_auction/colors.dart';
import 'package:car_auction/pages/auctions/page.dart';
import 'package:car_auction/pages/auctions/pages/page.dart';
import 'package:car_auction/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

// GoRouter configuration
final _router = GoRouter(
  initialLocation: '/auctions',
  routes: [
    ShellRoute(
      builder: (context, state, child) => SafeArea(
        child: Material(
          color: CAColors.black,
          child: IconTheme(
            data: const IconThemeData(color: CAColors.white),
            child: DefaultTextStyle(
              style: const TextStyle(color: CAColors.white),
              child: Column(
                children: [
                  const MyAppBar(),
                  Expanded(child: child),
                ],
              ),
            ),
          ),
        ),
      ),

      routes: [
        GoRoute(
          path: '/auctions',
          builder: (context, state) => const AuctionsPage(),
          routes: [
            GoRoute(
              path: 'auctions/:id',

              builder: (context, state) => const AuctionPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp.router(
    //   title: 'Car Auction',
    //   routerConfig: _router,
    //   debugShowCheckedModeBanner: false,
    // );

    return ShadApp.custom(
      themeMode: ThemeMode.dark,
      darkTheme: ShadThemeData(
        brightness: Brightness.dark,
        colorScheme: const ShadSlateColorScheme.dark(),
      ),
      appBuilder: (context) {
        return MaterialApp.router(
          title: 'Car Auction',
          debugShowCheckedModeBanner: false,
          routerConfig: _router,
        );
      },
    );
  }
}
