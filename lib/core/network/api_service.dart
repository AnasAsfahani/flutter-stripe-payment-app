import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();

  Future<Response?> post({
    required String url,
    required String token,
    String? contentType,
    bool stripeVersion = false,
    required dynamic body,
  }) async {
    final response = await dio.post(
      url,
      data: body,
      options: Options(
        contentType: contentType,
        headers: {
          "Authorization": "Bearer $token",
          if (stripeVersion)
            "Stripe-Version": "2026-10-28.endive",
        },
      ),
    );

    return response;
  }
}