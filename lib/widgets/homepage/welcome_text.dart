import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now().toUtc().add(const Duration(hours: 7));
    String formattedDate = ("${_getDayInIndonesian(date.weekday)}, " // Senin,
            "${date.day} " // 1
            "${_getMonthInIndonesian(date.month)} " // Januari
            "${date.year}" // 2024
        );

    return ResponsiveBuilder(builder: (context, sizingInformation) {
      String title = "Mau Makan Apa Hari Ini?";
      String subtitle = "Rekomendasi Menu Hari Ini - $formattedDate";
      double titleSize;
      double spacing;
      double subtitleSize;

      if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
        titleSize = 40;
        spacing = 25;
        subtitleSize = 20;
      } else if (sizingInformation.deviceScreenType ==
          DeviceScreenType.tablet) {
        titleSize = 34;
        spacing = 20;
        subtitleSize = 16;
      } else {
        title = "Mau Makan Apa\nHari Ini?";
        subtitle = "Rekomendasi Menu Hari Ini\n$formattedDate";
        titleSize = 24;
        spacing = 14;
        subtitleSize = 11;
      }

      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: titleSize,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: spacing),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: subtitleSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      );
    });
  }

  String _getDayInIndonesian(int day) {
    switch (day) {
      case 1:
        return "Senin";
      case 2:
        return "Selasa";
      case 3:
        return "Rabu";
      case 4:
        return "Kamis";
      case 5:
        return "Jumat";
      case 6:
        return "Sabtu";
      case 7:
        return "Minggu";
      default:
        return "";
    }
  }

  String _getMonthInIndonesian(int month) {
    switch (month) {
      case 1:
        return "Januari";
      case 2:
        return "Februari";
      case 3:
        return "Maret";
      case 4:
        return "April";
      case 5:
        return "Mei";
      case 6:
        return "Juni";
      case 7:
        return "Juli";
      case 8:
        return "Agustus";
      case 9:
        return "September";
      case 10:
        return "Oktober";
      case 11:
        return "November";
      case 12:
        return "Desember";
      default:
        return "";
    }
  }
}
