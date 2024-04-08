import 'package:expenditure_app/pages/home/transactions_widget.dart';
import 'package:flutter/material.dart';

class TransactionsCard extends StatelessWidget {
  const TransactionsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          TransactionsWidget(
              image: "fuel",
              text: "Akaryakıt",
              time: "Mar 02, 2024",
              money: "140"),
          TransactionsWidget(
              image: "cosmetics",
              text: "Kozmetik",
              time: "Şub 18 2024",
              money: "250"),
          TransactionsWidget(
              image: "school",
              text: "Okul",
              time: "Ara 12, 2023",
              money: "231"),
          TransactionsWidget(
              image: "travel",
              text: "Seyahat",
              time: "Ara 02, 2023",
              money: "523"),
          TransactionsWidget(
              image: "health",
              text: "Sağlık",
              time: "Kas 30, 2023",
              money: "800"),
          TransactionsWidget(
              image: "car", text: "Araba", time: "Kas 02, 2023", money: "780"),
          TransactionsWidget(
              image: "pet", text: "Dost", time: "Eki 12, 2023", money: "300"),
          TransactionsWidget(
              image: "cinema",
              text: "Sinema",
              time: "Eyl 02, 2022",
              money: "140"),
          SizedBox(
            height: 110,
          ),
        ],
      ),
    );
  }
}
