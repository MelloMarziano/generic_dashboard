import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:generic_dashboard/constants/colors.dart';
import 'package:generic_dashboard/constants/padding.dart';
import 'package:generic_dashboard/widgets/menu_buttons.dart';
import 'package:google_fonts/google_fonts.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.globalPadding,
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.backgroundColorDark,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Flutter',
            style: GoogleFonts.nunito(
              textStyle: const TextStyle(
                color: Colors.white,
                letterSpacing: .5,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.white.withOpacity(0.1),
          ),
          SizedBox(
            height: 30,
          ),
          ButtonMenu(
            icon: Icons.dashboard,
            nameMenu: 'Dashboard',
            isActive: true,
          ),
          ButtonMenu(
            icon: Icons.table_view,
            nameMenu: 'Tables',
            isActive: false,
          ),
          ButtonMenu(
            icon: Icons.receipt_long,
            nameMenu: 'Billing',
            isActive: false,
          ),
          ButtonMenu(
            icon: Icons.notifications,
            nameMenu: 'Notifications',
            isActive: false,
          ),
          ButtonMenu(
            icon: Icons.person,
            nameMenu: 'Profile',
            isActive: false,
          ),
          Spacer(),
          ButtonMenu(
            icon: Icons.exit_to_app,
            nameMenu: 'Log out',
            isActive: true,
          ),
        ],
      ),
    );
  }
}
