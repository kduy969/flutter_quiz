import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Test',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.ten_k_rounded,
          ),
          label: 'Test2',
        )
      ],
      onTap: (idx) {
        debugPrint('On press ' + idx.toString());
      },
    );
  }
}
