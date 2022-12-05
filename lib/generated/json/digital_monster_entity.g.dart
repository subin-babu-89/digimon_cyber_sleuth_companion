import 'package:digimon_cyber_sleuth_companion/generated/json/base/json_convert_content.dart';
import 'package:digimon_cyber_sleuth_companion/src/monster_list/digital_monster_entity.dart';

DigitalMonsterEntity $DigitalMonsterEntityFromJson(Map<String, dynamic> json) {
	final DigitalMonsterEntity digitalMonsterEntity = DigitalMonsterEntity();
	final String? digimonName = jsonConvert.convert<String>(json['digimon_name']);
	if (digimonName != null) {
		digitalMonsterEntity.digimonName = digimonName;
	}
	final String? digivolvesInto = jsonConvert.convert<String>(json['digivolves_into']);
	if (digivolvesInto != null) {
		digitalMonsterEntity.digivolvesInto = digivolvesInto;
	}
	final double? level = jsonConvert.convert<double>(json['level']);
	if (level != null) {
		digitalMonsterEntity.level = level;
	}
	final dynamic? hp = jsonConvert.convert<dynamic>(json['hp']);
	if (hp != null) {
		digitalMonsterEntity.hp = hp;
	}
	final dynamic? sp = jsonConvert.convert<dynamic>(json['sp']);
	if (sp != null) {
		digitalMonsterEntity.sp = sp;
	}
	final dynamic? atk = jsonConvert.convert<dynamic>(json['atk']);
	if (atk != null) {
		digitalMonsterEntity.atk = atk;
	}
	final dynamic? def = jsonConvert.convert<dynamic>(json['def']);
	if (def != null) {
		digitalMonsterEntity.def = def;
	}
	final dynamic? int = jsonConvert.convert<dynamic>(json['int']);
	if (int != null) {
		digitalMonsterEntity.int = int;
	}
	final dynamic? spd = jsonConvert.convert<dynamic>(json['spd']);
	if (spd != null) {
		digitalMonsterEntity.spd = spd;
	}
	final dynamic? abi = jsonConvert.convert<dynamic>(json['abi']);
	if (abi != null) {
		digitalMonsterEntity.abi = abi;
	}
	final String? cam = jsonConvert.convert<String>(json['cam']);
	if (cam != null) {
		digitalMonsterEntity.cam = cam;
	}
	final String? dlc = jsonConvert.convert<String>(json['dlc']);
	if (dlc != null) {
		digitalMonsterEntity.dlc = dlc;
	}
	final String? item = jsonConvert.convert<String>(json['item']);
	if (item != null) {
		digitalMonsterEntity.item = item;
	}
	final String? xCase = jsonConvert.convert<String>(json['case']);
	if (xCase != null) {
		digitalMonsterEntity.xCase = xCase;
	}
	final String? digimon = jsonConvert.convert<String>(json['digimon']);
	if (digimon != null) {
		digitalMonsterEntity.digimon = digimon;
	}
	return digitalMonsterEntity;
}

Map<String, dynamic> $DigitalMonsterEntityToJson(DigitalMonsterEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['digimon_name'] = entity.digimonName;
	data['digivolves_into'] = entity.digivolvesInto;
	data['level'] = entity.level;
	data['hp'] = entity.hp;
	data['sp'] = entity.sp;
	data['atk'] = entity.atk;
	data['def'] = entity.def;
	data['int'] = entity.int;
	data['spd'] = entity.spd;
	data['abi'] = entity.abi;
	data['cam'] = entity.cam;
	data['dlc'] = entity.dlc;
	data['item'] = entity.item;
	data['case'] = entity.xCase;
	data['digimon'] = entity.digimon;
	return data;
}