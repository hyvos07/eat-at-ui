import 'package:flutter/material.dart';

class WelcomeTextMobile extends StatelessWidget {
  const WelcomeTextMobile({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.now().toUtc().add(const Duration(hours: 7));
    String formattedDate = ("${_getDayInIndonesian(date.weekday)}, " // Senin,
            "${date.day} " // 1
            "${_getMonthInIndonesian(date.month)} " // Januari
            "${date.year}" // 2024
        );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Mau Makan Apa Hari Ini?",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          "Rekomendasi Menu Hari Ini - $formattedDate",
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
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
