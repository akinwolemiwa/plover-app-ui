import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:plover/custom_icons_icons.dart';
import 'package:plover/src/home/homepage.dart';
import 'package:plover/src/theme/color.dart';
import 'package:plover/src/theme/text.dart';

class BottomNavWidget extends StatefulWidget {
  const BottomNavWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  List<Widget> _navScreens() {
    return [
      const HomePage(),
      const SizedBox(),
      const SizedBox(),
      const SizedBox(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(
          CustomIcons.home,
          size: 24,
        ),
        title: ("Home"),
        textStyle: textTheme.subtitle2!.copyWith(fontWeight: FontWeight.w300),
        activeColorPrimary: MyColors.mainGreen,
        inactiveColorPrimary: Colors.black.withOpacity(0.5),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          CustomIcons.policy,
          size: 24,
        ),
        title: ("Claims"),
        textStyle: textTheme.subtitle2!.copyWith(fontWeight: FontWeight.w300),
        activeColorPrimary: MyColors.mainGreen,
        inactiveColorPrimary: Colors.black.withOpacity(0.5),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          CustomIcons.insurance,
          size: 24,
        ),
        title: ("Issues"),
        textStyle: textTheme.subtitle2!.copyWith(fontWeight: FontWeight.w300),
        activeColorPrimary: MyColors.mainGreen,
        inactiveColorPrimary: Colors.black.withOpacity(0.5),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          CustomIcons.settings,
          size: 24,
        ),
        title: ("Settings"),
        textStyle: textTheme.subtitle2!.copyWith(fontWeight: FontWeight.w300),
        activeColorPrimary: MyColors.mainGreen,
        inactiveColorPrimary: Colors.black.withOpacity(0.5),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PersistentTabView(
        context,
        screens: _navScreens(),
        items: _navBarsItems(),
        controller: _controller,
        backgroundColor: Colors.white,
        hideNavigationBarWhenKeyboardShows: true,
        popAllScreensOnTapOfSelectedTab: true,
        navBarStyle: NavBarStyle.simple,
      ),
    );
  }
}
