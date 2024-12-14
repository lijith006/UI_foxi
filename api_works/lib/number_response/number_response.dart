import 'package:json_annotation/json_annotation.dart';

part 'number_response.g.dart';

@JsonSerializable()
class NumberResponse {
  @JsonKey(name: 'text')
  String? text;

  @JsonKey(name: 'number')
  int? number;

  @JsonKey(name: 'found')
  bool? found;

  @JsonKey(name: 'type')
  String? type;

  NumberResponse({this.text, this.number, this.found, this.type});

  factory NumberResponse.fromJson(Map<String, dynamic> json) {
    return _$NumberResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NumberResponseToJson(this);
}
