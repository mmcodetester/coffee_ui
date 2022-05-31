import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GFIconButton(
              shape: GFIconButtonShape.circle,
              tooltip: 'menu item',
              hoverColor: Colors.transparent,
              color: GFColors.DARK,
              icon: const Icon(Icons.menu_sharp),
              onPressed: () {}),
          const GFAvatar(
            shape: GFAvatarShape.standard,
            radius: 20.0,
            backgroundImage: NetworkImage(
                'https://assets.survivalinternational.org/pictures/489/4116455578-1f8d781f66-b_screen.jpg'),
          )
        ],
      ),
    );
  }
}
