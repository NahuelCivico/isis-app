import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:isisapp/core/design/colors.dart';
import 'package:isisapp/core/widgets/shared/custom_title.dart';
import 'package:isisapp/core/widgets/shared/icon_isis.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      toolbarHeight: 80,
      leading: InkWell(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: const Icon(
          FontAwesomeIcons.bars,
          color: Colors.white,
          shadows: [
            Shadow(
              blurRadius: 5,
              color: AppColors.orange,
              offset: Offset(1, 2),
            ),
          ],
        ),
      ),
      centerTitle: true,
      title: const IconIsis(),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 18),
          child: InkWell(
            onTap: () => showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                icon: Icon(
                  FontAwesomeIcons.triangleExclamation,
                  color: AppColors.orange,
                  size: 50,
                ),
                backgroundColor: AppColors.lightOrange,
                title: CustomTitle(
                  text: 'Proximamente!',
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  textAlign: TextAlign.center,
                ),
                content: CustomTitle(
                  text:
                      'Podras sacar fotos, subirlas y compartilas con los padres y madres de la comunidad.',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            child: const Icon(
              FontAwesomeIcons.camera,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 5,
                  color: AppColors.orange,
                  offset: Offset(1, 2),
                ),
              ],
            ),
          ),
        )
      ],
      flexibleSpace: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.white,
                AppColors.lightOrange,
              ],
            ),
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
