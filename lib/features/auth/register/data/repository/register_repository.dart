import '../../../../../core/networking/api_error_handler.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../../../core/networking/api_service.dart';
import '../models/register_request_body.dart';
import '../models/register_response.dart';

class RegisterRepository {
  final ApiService _apiService;

  RegisterRepository(this._apiService);

  Future<ApiResult<RegisterResponse>> register(RegisterRequestBody registerRequestBody) async {
    try {
      final response = await _apiService.register(registerRequestBody);
      return ApiResult.success(response);
    } catch(error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}