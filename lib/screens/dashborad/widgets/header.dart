import 'package:admin/constants.dart';
import 'package:admin/controllers/MenuController.dart';
import 'package:admin/screens/dashborad/widgets/profile_card.dart';
import 'package:flutter/material.dart';

import '../../../responsive.dart';
import 'search_field.dart';
import 'package:provider/provider.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: Icon(
              Icons.menu,
            ),
            onPressed: context.read<MenuController>().controlMenu,
          ),
        if (Responsive.isMobile(context))
          SizedBox(
            width: defaultPadding,
          ),
        if (!Responsive.isMobile(context))
          Text(
            "Dashboard",
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          Spacer(
            flex: Responsive.isDesktop(context) ? 2 : 1,
          ),
        Expanded(child: SearchField()),
        ProfileCard(),
      ],
    );
  }
}
