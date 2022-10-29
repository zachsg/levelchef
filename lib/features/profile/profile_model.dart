import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/allergy.dart';
import '../../models/appliance.dart';
import '../../models/diet.dart';
import '../../models/experience.dart';
import '../../models/path.dart';
import '../../models/small_ware.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    @Default('') String name,
    @Default('') String email,
    @Default('') String handle,
    @Default('') String avatar,
    @Default('') String bio,
    @Default(Experience.novice) Experience experience,
    @Default(0) @JsonKey(name: 'experience_points') int experiencePoints,
    @Default(Path.none) Path path,
    @Default([]) List<Allergy> allergies,
    @Default([]) List<Appliance> appliances,
    @Default([]) @JsonKey(name: 'small_wares') List<SmallWare> smallWares,
    @Default([]) List<Diet> diets,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
