import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'created_recipes_model.freezed.dart';

@freezed
class CreatedRecipesModel with _$CreatedRecipesModel {
  const factory CreatedRecipesModel({
    @Default(Stream.empty()) Stream<QuerySnapshot<Object?>> recipeSnapshots,
  }) = _CreatedRecipesModel;
}
