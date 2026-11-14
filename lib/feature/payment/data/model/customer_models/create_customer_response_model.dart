class CreateCustomerResponseModel {
  final String id;
  CreateCustomerResponseModel({required this.id});

  factory CreateCustomerResponseModel.fromJson(Map<String, dynamic> json) {
    return CreateCustomerResponseModel(id: json['id'] as String);
  }
}
