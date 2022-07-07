import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:generic_dashboard/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonMenu extends StatefulWidget {
  final IconData icon;
  final String nameMenu;
  bool isActive;
  bool isHover = false;

  ButtonMenu({
    super.key,
    required this.icon,
    required this.nameMenu,
    this.isActive = false,
  });

  @override
  State<ButtonMenu> createState() => _ButtonMenuState();
}

class _ButtonMenuState extends State<ButtonMenu> {
  late double fontSizeText;
  @override
  void initState() {
    super.initState();
    if (widget.isActive) {
      fontSizeText = 15;
    } else {
      fontSizeText = 12;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (value) {
        setState(() {
          widget.isHover = true;
        });
      },
      onExit: (value) {
        setState(() {
          widget.isHover = false;
        });
      },
      child: GestureDetector(
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.symmetric(
            vertical: 8,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          height: 48,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: widget.isHover
                ? Colors.grey.withOpacity(0.2)
                : (widget.isActive)
                    ? AppColors.colorPink
                    : Colors.transparent,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                widget.icon,
                color: Colors.white,
                size: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                widget.nameMenu,
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    color: Colors.white,
                    letterSpacing: .5,
                    //fontWeight: FontWeight.bold,
                    fontSize: fontSizeText,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
