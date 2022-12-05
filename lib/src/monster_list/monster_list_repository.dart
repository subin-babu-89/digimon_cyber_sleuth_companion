import 'dart:convert';

import 'package:flutter/services.dart';

import 'digital_monster_entity.dart';

class MonsterListRepository {

  Future<List<DigitalMonsterEntity>> getAllDigivolutions() async {
    var jsonText = await rootBundle.loadString('assets/digievolution.json');
    return Future.value(List<DigitalMonsterEntity>.from(
        json.decode(jsonText).map((e) => DigitalMonsterEntity.fromJson(e))));
  }

  Future<List<String>> getAllDigimonNames() async {
    return getAllDigivolutions().then(
        (value) => value.map((e) => e.digimonName ?? '').toSet().toList());
  }
}
