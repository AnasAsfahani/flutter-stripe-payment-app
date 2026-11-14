class CreateCustomerRequestModel {
  final String name;
  final String email;
  final String phone;

  CreateCustomerRequestModel({
    required this.name,
    required this.email,
    required this.phone,
  });

  toJson() {
    return {"name": name, "email": email, "phone": phone};
  }
}
