import 'package:design_system/core/helpers/export_manager/export_manager.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;
  final bool? status;
  @JsonKey(name: 'data')
  final Map<String, dynamic>? errors;

  ApiErrorModel({
    this.message,
    this.code,
    this.status,
    this.errors,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  String getAllErrorMessages() {
    if (errors!.isNullOrEmpty()) return message ?? 'UnKnown Error occurred';

    final errorMessage = errors!.entries.map((entry) {
      final value = entry.value;
      return "${value.join(',')}";
    }).join("\n");
    return errorMessage;
  }
}



/// Example Error
/*{
    "message": "Unprocessable Entity",
    "data": {
        "name": [
            "The name field is required."
        ],
        "email": [
            "The email field is required."
        ],
        "phone": [
            "The phone field is required."
        ],
        "gender": [
            "The gender field is required."
        ],
        "password": [
            "The password field is required."
        ]
    },
    "status": false,
    "code": 422
}*/
