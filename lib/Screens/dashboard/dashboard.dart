import 'package:blood4all/Screens/profile/profile.dart';
import 'package:blood4all/Screens/utils/urls.dart';
import 'package:blood4all/Widgets/item_account.dart';
import 'package:blood4all/Widgets/remote_image.dart';
import 'package:blood4all/Widgets/stat_card.dart';
import 'package:blood4all/Widgets/text_custom.dart';

import 'package:flutter/material.dart';

class BankBloodDashboardScreen extends StatelessWidget {
  const BankBloodDashboardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        elevation: 0,
        title: const Text("Dashboard"),
        actions: [
          IconButton(
            iconSize: 40,
            icon: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: RemoteImage(imgUrl: Urls.img),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserProfileScreen(),
                  ));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextCustom(text: 'Statistiques', color: Colors.grey),
            const SizedBox(height: 10.0),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      StatCardGrid(
                        height: 190,
                        color: Color(0xff153565),
                        value: "129500",
                        desc: 'Stock de Sang',
                        icon: Icons.query_stats,
                        onTap: () {},
                      ),
                      const SizedBox(height: 10.0),
                      StatCardGrid(
                        height: 120,
                        color: Colors.green,
                        value: "6200",
                        desc: 'Demandes mensuelles',
                        icon: Icons.score_outlined,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    children: [
                      StatCardGrid(
                        height: 120,
                        color: Color.fromARGB(255, 102, 20, 14),
                        value: "95",
                        desc: 'Campagne de Sang',
                        icon: Icons.forum_outlined,
                        onTap: () {},
                      ),
                      const SizedBox(height: 10.0),
                      StatCardGrid(
                        height: 190,
                        color: Color.fromARGB(255, 185, 22, 22),
                        value: "200",
                        desc: 'Don de Sang mensuelles',
                        icon: Icons.apartment_outlined,
                        onTap: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20.0),
            const TextCustom(text: 'Menu', color: Colors.grey),
            const SizedBox(height: 10.0),
            ItemAccount(
              text: 'Lancer une Campagne',
              icon: Icons.campaign_outlined,
              colorIcon: 0xff5E65CD,
              onPressed: () {},
            ),
            ItemAccount(
              text: 'Sang disponible ',
              icon: Icons.design_services,
              colorIcon: 0xff6dbd63,
              onPressed: () {},
            ),
            ItemAccount(
              text: 'Historiques',
              icon: Icons.score,
              colorIcon: 0xff458bff,
              onPressed: () {},
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
