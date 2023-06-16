// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:blood4all/Models/bood_bank_model.dart';

class BloodModel {
  final String id;
  final String bloodGroup;
  final BloodBank bloodBank;
  final String delayTime;
  BloodModel({
    required this.id,
    required this.bloodGroup,
    required this.bloodBank,
    required this.delayTime
  });

  BloodModel copyWith({
    String? id,
    String? bloodGroup,
    BloodBank? bloodBank,
    String? delayTime
  }) {
    return BloodModel(
      id: id ?? this.id,
      bloodGroup: bloodGroup ?? this.bloodGroup,
      bloodBank: bloodBank ?? this.bloodBank,
      delayTime: delayTime?? this.delayTime
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'bloodGroup': bloodGroup,
      'bloodBank': bloodBank.toMap(),
      'delayTime':delayTime
    };
  }

  factory BloodModel.fromMap(Map<String, dynamic> map) {
    return BloodModel(
      id: map['id'] as String,
      bloodGroup: map['bloodGroup'] as String,
      bloodBank: BloodBank.fromMap(map['bloodBank'] as Map<String, dynamic>),
      delayTime: map['delayTime'] as String
    );
  }

  String toJson() => json.encode(toMap());

  factory BloodModel.fromJson(String source) =>
      BloodModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'BloodModel(id: $id, bloodGroup: $bloodGroup, bloodBank: $bloodBank, delayTime: $delayTime)';

  @override
  bool operator ==(covariant BloodModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.bloodGroup == bloodGroup &&
        other.bloodBank == bloodBank;
  }

  @override
  int get hashCode => id.hashCode ^ bloodGroup.hashCode ^ bloodBank.hashCode;

  static List<BloodModel> bloods = [
    BloodModel(
        id: "1",
        bloodGroup: "A+",
        bloodBank:
            BloodBank(id: "2", name: "Cotonou Blood Express", adresse: "20"), delayTime: '50'),
    BloodModel(
        id: "2",
        bloodGroup: "B+",
        delayTime: "20",
        bloodBank:
            BloodBank(id: "2", name: "Cotonou Blood Express", adresse: "20")),
    BloodModel(
        id: "3",
        bloodGroup: "AB+",
        delayTime: "10",
        bloodBank: BloodBank(id: "3", name: "Calavi Blood ", adresse: "10")),
    BloodModel(
      delayTime: "50",
        id: "4",
        bloodGroup: "A-",
        bloodBank: BloodBank(id: "2", name: "Calavi Blood", adresse: "10"))
  ];
}
