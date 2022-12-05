import 'package:digimon_cyber_sleuth_companion/generated/json/base/json_field.dart';
import 'package:digimon_cyber_sleuth_companion/generated/json/digital_monster_entity.g.dart';
import 'dart:convert';

@JsonSerializable()
class DigitalMonsterEntity {

	@JSONField(name: "digimon_name")
	String? digimonName;
	@JSONField(name: "digivolves_into")
	String? digivolvesInto;
	double? level;
	dynamic hp;
	dynamic sp;
	dynamic atk;
	dynamic def;
	dynamic int;
	dynamic spd;
	dynamic abi;
	String? cam;
	String? dlc;
	String? item;
	@JSONField(name: "case")
	String? xCase;
	String? digimon;
  
  DigitalMonsterEntity();

  factory DigitalMonsterEntity.fromJson(Map<String, dynamic> json) => $DigitalMonsterEntityFromJson(json);

  Map<String, dynamic> toJson() => $DigitalMonsterEntityToJson(this);

  @override
  String toString() {
    return jsonEncode(this);
  }
}