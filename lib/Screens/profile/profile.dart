import 'package:blood4all/Screens/profile/widgets/send_file_modal.dart';
import 'package:blood4all/Screens/utils/constants.dart';
import 'package:blood4all/Screens/utils/urls.dart';

import 'package:blood4all/Widgets/item_account.dart';
import 'package:blood4all/Widgets/profile_widget.dart';
import 'package:blood4all/Widgets/text_custom.dart';
import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileWidget(
                imagePath: Urls.img,
                onClicked: () {
                  showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(25.0)),
                    ),
                    backgroundColor: kBackgroundColor,
                    context: context,
                    isScrollControlled: true,
                    builder: (context) {
                      return SendMediaFileModal();
                    },
                  );
                },
              ),
              const SizedBox(height: 20.0),
              const Center(
                child: TextCustom(
                  text: "Nom d'utilisateur",
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 5.0),
              const Center(child: TextCustom(text: "email")),
              const TextCustom(text: 'Mon compte', color: Colors.grey),
              const SizedBox(height: 10.0),
              ItemAccount(
                text: 'Mon solde eCash : 35000 F',
                icon: Icons.payments_outlined,
                colorIcon: 0xff01C58C,
                onPressed: () {},
                showTrailing: false,
              ),
              ItemAccount(
                text: 'Modifier mon profil',
                icon: Icons.person,
                colorIcon: 0xff01C58C,
                onPressed: () {},
              ),
              ItemAccount(
                text: 'Changer mon mot de passe',
                icon: Icons.lock_rounded,
                colorIcon: 0xff1B83F5,
                onPressed: () {},
              ),
              const SizedBox(height: 15.0),
              const TextCustom(text: 'Plus', color: Colors.grey),
              const SizedBox(height: 10.0),
              const ItemAccount(
                text: 'Politique de confidentialité',
                icon: Icons.policy_rounded,
                colorIcon: 0xff6dbd63,
              ),
              const ItemAccount(
                text: 'Termes & Conditions',
                icon: Icons.description_outlined,
                colorIcon: 0xff458bff,
              ),
              const ItemAccount(
                text: 'Demander de l\'aide',
                icon: Icons.help_outline,
                colorIcon: 0xff4772e6,
              ),
              const Divider(),
              ItemAccount(
                text: 'Déconnexion',
                icon: Icons.power_settings_new_sharp,
                colorIcon: 0xffF02849,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
