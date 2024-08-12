// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExamImpl _$$ExamImplFromJson(Map<String, dynamic> json) => _$ExamImpl(
      name: json['name'] as String,
      topics: (json['topics'] as List<dynamic>)
          .map((e) => Topic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ExamImplToJson(_$ExamImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'topics': instance.topics,
    };
