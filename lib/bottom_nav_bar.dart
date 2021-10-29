import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {

  CustomBottomNavigationBar({
    Key? key,
    this.selectedPageIndex,
    this.onIconTap
  }) : super(key: key);

  final int? selectedPageIndex;
  final Function? onIconTap;
  final double? _unselectedIconSize = 25;
  final double? _selectedIconSize = 22;

  @override
  Widget build(BuildContext context) {
    return Container(

      height: MediaQuery.of(context).size.height*0.08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _bottomNavItem(0, 'Home',Icons.home,Icons.home_outlined),
          _bottomNavItem(1, 'Search',Icons.search,Icons.search_outlined),
          _bottomNavItem(2, 'Shop',Icons.local_mall,Icons.local_mall_outlined),
          _bottomNavItem(3, 'Profile',Icons.account_circle,Icons.account_circle_outlined),

        ],
      ),
    );
  }

  _bottomNavItem(
      int index,
      String label,
      IconData selectedIcon,
      IconData unselectedIcon,
      ){
    return GestureDetector(
      onTap: (){
        onIconTap!(index);
      },
      child: selectedPageIndex==index
      ?Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(
                selectedIcon,
            color: Colors.teal.shade100,
              size: _selectedIconSize,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.teal.shade100,
              ),
            ),
          ],
        ),
      )
      :Icon(
          unselectedIcon,
        color: Colors.teal,
        size: _unselectedIconSize,
      ),
    );
  }

}
