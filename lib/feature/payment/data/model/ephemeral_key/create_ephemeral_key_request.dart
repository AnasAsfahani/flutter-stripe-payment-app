class CreateEphemeralKeyRequest {
  final String customerId;
  CreateEphemeralKeyRequest({required this.customerId});

  toJson() {
    return {"customer": customerId};
  }
}
