import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        color: Colors.black87,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
                child: _bottomNavBarItem(
                    icon: const Icon(Icons.home_outlined,
                        color: Colors.white, size: 30),
                    onMenuClick: () {})),
            Expanded(
                child: _bottomNavBarItem(
                    icon:
                        const Icon(Icons.search, color: Colors.white, size: 30),
                    onMenuClick: () {})),
            Expanded(
                child: _bottomNavBarItem(
                    icon: const Icon(Icons.add_circle_outline_sharp,
                        color: Colors.white, size: 30),
                    onMenuClick: () {})),
            Expanded(
                child: _bottomNavBarItem(
                    icon: const Icon(Icons.task_alt,
                        color: Colors.white, size: 30),
                    onMenuClick: () {})),
            Expanded(
                child: _bottomNavBarItem(
                    icon: const Icon(Icons.account_circle_outlined,
                        color: Colors.white, size: 30),
                    onMenuClick: () {})),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavBarItem({
    bool isSelected = false,
    Function? onMenuClick,
    required Widget icon,
  }) {
    return Container(
      child: icon,
    );
  }
}
