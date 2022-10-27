import 'package:flash_cards/repository/subjectsRepo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'subject.freezed.dart';

part 'subject.g.dart';

@freezed
class Subject with _$Subject {
  const factory Subject({
    required final String name,
    required final int count,
    required final int id,
  }) = _Subject;

  factory Subject.fromJson(Map<String, Object?> json) =>
      _$SubjectFromJson(json);
}
