import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_model.freezed.dart';

@freezed
class BottomNavigationModel with _$BottomNavigationModel {
  const factory BottomNavigationModel({
    required int tabIndex,
  }) = _BottomNavigationModel;
}
