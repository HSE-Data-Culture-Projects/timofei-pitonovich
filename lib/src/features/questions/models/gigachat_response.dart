import 'package:freezed_annotation/freezed_annotation.dart';

part 'gigachat_response.freezed.dart';

part 'gigachat_response.g.dart';

@freezed
class GigaChatResponse with _$GigaChatResponse {
  const factory GigaChatResponse({
    required List<Choice> choices,
    required int created,
    required String model,
    required String object,
    required Usage usage,
  }) = _GigaChatResponse;

  factory GigaChatResponse.fromJson(Map<String, dynamic> json) =>
      _$GigaChatResponseFromJson(json);
}

@freezed
class Choice with _$Choice {
  const factory Choice({
    required Message message,
    required int index,
    @JsonKey(name: 'finish_reason')
    required String finishReason,
  }) = _Choice;

  factory Choice.fromJson(Map<String, dynamic> json) => _$ChoiceFromJson(json);
}

@freezed
class Message with _$Message {
  const factory Message({
    required String content,
    required String role,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

@freezed
class Usage with _$Usage {
  const factory Usage({
    @JsonKey(name: 'prompt_tokens')
    required int promptTokens,
    @JsonKey(name: 'completion_tokens')
    required int completionTokens,
    @JsonKey(name: 'total_tokens')
    required int totalTokens,
  }) = _Usage;

  factory Usage.fromJson(Map<String, dynamic> json) => _$UsageFromJson(json);
}
