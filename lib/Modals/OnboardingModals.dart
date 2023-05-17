class OnboardingModals {
  final String title;
  final String subTitle;
  final String imagePath;

  OnboardingModals(
      {required this.title, required this.subTitle, required this.imagePath});
}

List<OnboardingModals> onboardingModals = [
  OnboardingModals(
      title: "Entrer les paramètres de recherche",
      subTitle: "Groupe Sanguin, Facteur Rhésus, Poids, Age...",
      imagePath: "assets/images/perso.jpg"),
  OnboardingModals(
      title: "Trouvez des banques de sang",
      subTitle: "A proximité et répondant aux critères de recherches",
      imagePath: "assets/images/atelier.jpg"),
  OnboardingModals(
      title: "Générer le code aléatoire en un clic",
      subTitle: "Avec toutes les références, sur l’ordonnance du patient",
      imagePath: "assets/images/qrcode.jpg"),
];
