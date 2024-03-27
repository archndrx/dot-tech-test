import 'package:dot_tech_test/shared/methods.dart';
import 'package:dot_tech_test/shared/theme.dart';
import 'package:dot_tech_test/view/pages/add_expenses_page.dart';
import 'package:dot_tech_test/view/widgets/homepage_category_widget.dart';
import 'package:dot_tech_test/view/widgets/homepage_expenses_widget.dart';
import 'package:dot_tech_test/view/widgets/homepage_history_widget.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          children: [
            buildProfile(),
            buildCategory(),
            buildHistory(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddExpenses()));
        },
        backgroundColor: blueColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(48),
        ),
        child: Image.asset(
          'assets/add_icon.png',
          width: 16,
        ),
      ),
    );
  }
}

Widget buildProfile() {
  return Container(
    margin: const EdgeInsets.only(top: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Halo, User!",
          style: blackTextStyle.copyWith(
            fontWeight: bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'Jangan lupa catat keuanganmu setiap hari!',
          style: grayTextStyle.copyWith(
            fontSize: 14,
            fontWeight: regular,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: HomeExpenses(
                  color: blueColor,
                  text: 'Pengeluaranmu\nhari ini',
                  nominal: formatCurrency(30000),
                ),
              ),
              const SizedBox(
                width: 19,
              ),
              Expanded(
                flex: 1,
                child: HomeExpenses(
                  color: greenColor,
                  text: 'Pengeluaranmu\nbulan ini',
                  nominal: formatCurrency(335500),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildCategory() {
  return Container(
    margin: const EdgeInsets.only(top: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Pengeluaran berdasarkan kategori',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              HomepageCategory(
                  backgroundColor: yellowColor,
                  iconUrl: 'assets/food_icon.png',
                  text: 'Makanan',
                  nominal: formatCurrency(70000)),
              HomepageCategory(
                  backgroundColor: cyanColor,
                  iconUrl: 'assets/internet_icon.png',
                  text: 'Internet',
                  nominal: formatCurrency(50000)),
              HomepageCategory(
                  backgroundColor: darkPurpleColor,
                  iconUrl: 'assets/transport_icon.png',
                  text: 'Transportasi',
                  nominal: formatCurrency(70000)),
            ],
          ),
        )
      ],
    ),
  );
}

Widget buildHistory() {
  return Container(
    margin: const EdgeInsets.only(top: 28),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hari ini',
          style: blackTextStyle.copyWith(
            fontWeight: bold,
            fontSize: 16,
          ),
        ),
        HomepageHistory(
          image: foodIcon,
          text: 'Ayam Geprek',
          nominal: formatCurrency(15000),
        ),
        HomepageHistory(
          image: transportIcon,
          text: 'Gojek',
          nominal: formatCurrency(15000),
        ),
        const SizedBox(
          height: 28,
        ),
        Text(
          'Kemarin',
          style: blackTextStyle.copyWith(
            fontWeight: bold,
            fontSize: 16,
          ),
        ),
        HomepageHistory(
          image: internetIcon,
          text: 'Paket Data',
          nominal: formatCurrency(15000),
        ),
      ],
    ),
  );
}
