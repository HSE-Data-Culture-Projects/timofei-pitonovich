// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gigachat_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GigaChatResponseImpl _$$GigaChatResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GigaChatResponseImpl(
      choices: (json['choices'] as List<dynamic>)
          .map((e) => Choice.fromJson(e as Map<String, dynamic>))
          .toList(),
      created: (json['created'] as num).toInt(),
      model: json['model'] as String,
      object: json['object'] as String,
      usage: Usage.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GigaChatResponseImplToJson(
        _$GigaChatResponseImpl instance) =>
    <String, dynamic>{
      'choices': instance.choices,
      'created': instance.created,
      'model': instance.model,
      'object': instance.object,
      'usage': instance.usage,
    };

_$ChoiceImpl _$$ChoiceImplFromJson(Map<String, dynamic> json) => _$ChoiceImpl(
      message: Message.fromJson(json['message'] as Map<String, dynamic>),
      index: (json['index'] as num).toInt(),
      finishReason: json['finish_reason'] as String,
    );

Map<String, dynamic> _$$ChoiceImplToJson(_$ChoiceImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'index': instance.index,
      'finish_reason': instance.finishReason,
    };

_$MessageImpl _$$MessageImplFromJson(Map<String, dynamic> json) =>
    _$MessageImpl(
      content: json['content'] as String,
      role: json['role'] as String,
    );

Map<String, dynamic> _$$MessageImplToJson(_$MessageImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'role': instance.role,
    };

_$UsageImpl _$$UsageImplFromJson(Map<String, dynamic> json) => _$UsageImpl(
      promptTokens: (json['prompt_tokens'] as num).toInt(),
      completionTokens: (json['completion_tokens'] as num).toInt(),
      totalTokens: (json['total_tokens'] as num).toInt(),
    );

Map<String, dynamic> _$$UsageImplToJson(_$UsageImpl instance) =>
    <String, dynamic>{
      'prompt_tokens': instance.promptTokens,
      'completion_tokens': instance.completionTokens,
      'total_tokens': instance.totalTokens,
    };
