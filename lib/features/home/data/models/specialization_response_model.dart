import 'package:json_annotation/json_annotation.dart';

part 'specialization_response_model.g.dart';

@JsonSerializable()
class SpecializationResponseModel {
  @JsonKey(name: 'data')
  List<SpecializationDataModel?>? SpecializationDataList;

  SpecializationResponseModel({
    this.SpecializationDataList,
});

  factory SpecializationResponseModel.fromJson(Map<String, dynamic> json) => _$SpecializationResponseModelFromJson(json);
}

@JsonSerializable()
class SpecializationDataModel {
  int? id;
  String? name;
  @JsonKey(name: 'doctors')
  List<DoctorsModel?>? doctorsList;

  SpecializationDataModel({
    this.id,
    this.name,
    this.doctorsList,
});

  factory SpecializationDataModel.fromJson(Map<String, dynamic> json) => _$SpecializationDataModelFromJson(json);
}

@JsonSerializable()
class DoctorsModel {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? degree;
  @JsonKey(name: 'appoint_price')
  int? price;

  DoctorsModel({
    this.id,
    this.name,
    this.phone,
    this.price,
    this.email,
    this.gender,
    this.degree,
    this.photo,
});

  factory DoctorsModel.fromJson(Map<String, dynamic> json) => _$DoctorsModelFromJson(json);
}