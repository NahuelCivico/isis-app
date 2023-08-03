import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:isisapp/core/design/colors.dart';
import 'package:isisapp/core/routes/routes.dart';
import 'package:isisapp/core/widgets/shared/custom_title.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final AnimationController _animationController = AnimationController(
      vsync: Navigator.of(context),
      duration: Duration(seconds: 2),
    );

    final animation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );

    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.lightOrange,
              AppColors.white,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 150, bottom: 50, left: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FadeInRight(
                duration: Duration(milliseconds: 300),
                child: InkWell(
                  onTap: () => Navigator.pushNamed(context, AppRoutes.students),
                  child: Row(
                    children: const [
                      Icon(FontAwesomeIcons.peopleGroup),
                      SizedBox(width: 20),
                      CustomTitle(text: 'Alumnos'),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              FadeInRight(
                duration: Duration(milliseconds: 400),
                child: Row(
                  children: const [
                    Icon(FontAwesomeIcons.book),
                    SizedBox(width: 20),
                    CustomTitle(text: 'Materiales'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              FadeInRight(
                duration: Duration(milliseconds: 500),
                child: Row(
                  children: const [
                    Icon(FontAwesomeIcons.image),
                    SizedBox(width: 20),
                    CustomTitle(text: 'Imagenes'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              FadeInRight(
                duration: Duration(milliseconds: 600),
                child: Row(
                  children: const [
                    Icon(FontAwesomeIcons.moneyBill),
                    SizedBox(width: 20),
                    CustomTitle(text: 'Pagos'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              FadeInRight(
                duration: Duration(milliseconds: 700),
                child: Row(
                  children: const [
                    Icon(FontAwesomeIcons.solidBell),
                    SizedBox(width: 20),
                    CustomTitle(text: 'Notificaciones'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              FadeInRight(
                duration: Duration(milliseconds: 800),
                child: Row(
                  children: const [
                    Icon(FontAwesomeIcons.book),
                    SizedBox(width: 20),
                    CustomTitle(text: 'Cursos'),
                  ],
                ),
              ),
              const Spacer(),
              Row(
                children: const [
                  Icon(Icons.logout),
                  SizedBox(width: 10),
                  CustomTitle(text: 'Cerrar Sesión'),
                ],
              ),
              const Spacer(),
              const CustomTitle(text: 'Versión 1.0.0'),
            ],
          ),
        ),
      ),
    );
  }
}
