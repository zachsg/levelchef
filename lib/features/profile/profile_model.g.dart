// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileModel _$$_ProfileModelFromJson(Map<String, dynamic> json) =>
    _$_ProfileModel(
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      handle: json['handle'] as String? ?? '',
      avatar: json['avatar'] as String? ?? '',
      bio: json['bio'] as String? ?? '',
      experience:
          $enumDecodeNullable(_$ExperienceEnumMap, json['experience']) ??
              Experience.novice,
      experiencePoints: json['experience_points'] as int? ?? 0,
      path: $enumDecodeNullable(_$PathEnumMap, json['path']) ?? Path.none,
      allergies: (json['allergies'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$AllergyEnumMap, e))
              .toList() ??
          const [],
      appliances: (json['appliances'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$ApplianceEnumMap, e))
              .toList() ??
          const [],
      smallWares: (json['small_wares'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$SmallWareEnumMap, e))
              .toList() ??
          const [],
      diets: (json['diets'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$DietEnumMap, e))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ProfileModelToJson(_$_ProfileModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'handle': instance.handle,
      'avatar': instance.avatar,
      'bio': instance.bio,
      'experience': _$ExperienceEnumMap[instance.experience]!,
      'experience_points': instance.experiencePoints,
      'path': _$PathEnumMap[instance.path]!,
      'allergies': instance.allergies.map((e) => _$AllergyEnumMap[e]!).toList(),
      'appliances':
          instance.appliances.map((e) => _$ApplianceEnumMap[e]!).toList(),
      'small_wares':
          instance.smallWares.map((e) => _$SmallWareEnumMap[e]!).toList(),
      'diets': instance.diets.map((e) => _$DietEnumMap[e]!).toList(),
    };

const _$ExperienceEnumMap = {
  Experience.novice: 'novice',
  Experience.dabbler: 'dabbler',
  Experience.cook: 'cook',
  Experience.chef: 'chef',
  Experience.proChef: 'proChef',
};

const _$PathEnumMap = {
  Path.none: 'none',
  Path.family: 'family',
  Path.veggie: 'veggie',
  Path.hearty: 'hearty',
  Path.primal: 'primal',
};

const _$AllergyEnumMap = {
  Allergy.wheat: 'wheat',
  Allergy.soy: 'soy',
  Allergy.dairy: 'dairy',
  Allergy.eggs: 'eggs',
  Allergy.shellfish: 'shellfish',
  Allergy.peanuts: 'peanuts',
  Allergy.treeNuts: 'treeNuts',
  Allergy.sesame: 'sesame',
};

const _$ApplianceEnumMap = {
  Appliance.oven: 'oven',
  Appliance.stovetop: 'stovetop',
  Appliance.airFryer: 'airFryer',
  Appliance.instantPot: 'instantPot',
  Appliance.blender: 'blender',
  Appliance.foodProcessor: 'foodProcessor',
};

const _$SmallWareEnumMap = {
  SmallWare.mortarAndPestle: 'mortarAndPestle',
  SmallWare.pots: 'pots',
  SmallWare.pans: 'pans',
  SmallWare.bakingSheet: 'bakingSheet',
};

const _$DietEnumMap = {
  Diet.paleo: 'paleo',
  Diet.keto: 'keto',
  Diet.vegetarian: 'vegetarian',
  Diet.vegan: 'vegan',
  Diet.omnivore: 'omnivore',
};
