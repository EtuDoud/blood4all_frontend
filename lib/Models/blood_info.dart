
class BloodInfo {
  final String groupe;
  bool active;
  BloodInfo({required this.groupe, this.active = false});

  static List<BloodInfo> groupeSanguin = [
    BloodInfo(groupe: "A+"),
    BloodInfo(groupe: "A-"),
    BloodInfo(groupe: "B+"),
    BloodInfo(groupe: "B-"),
    BloodInfo(groupe: "O+"),
    BloodInfo(groupe: "O-"),
    BloodInfo(groupe: "AB+"),
    BloodInfo(groupe: "AB-"),
  ];

}



