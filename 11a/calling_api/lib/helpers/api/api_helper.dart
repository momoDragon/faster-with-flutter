import 'package:calling_api/helpers/api/api_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';


// A helper that helps map a HttpResponse to APIResponse
class ApiHelper {
  static Future<APIResponse<T>> requestHandler<T>(dynamic request,
      {Map<Symbol, dynamic> namedArguments = const {}}) async {
    try {
      HttpResponse<T> responseBody =
          await Function.apply(request, [], namedArguments);
      return APIResponse<T>.success(body: responseBody.data);
    } on DioError catch (e) {
      switch (e.type) {
        case DioErrorType.badResponse:
          final statusCode = e.response!.statusCode;
          return APIResponse<T>.apiError(statusCode: statusCode!);
        case DioErrorType.unknown:
          String message = '';
          if (e.error.toString().contains('SocketException')) {
            message = 'NETWORK';
          } else {
            message = e.error.toString();
          }
          return APIResponse<T>.localError(message: message);
        default:
          return APIResponse<T>.localError(message: 'UNKNOWN');
      }
    }
  }
}
