import 'package:blood4all/core/service/dio_service.dart';
import 'package:blood4all/core/service/parse_result.dart';
import 'package:blood4all/core/utils/app_func.dart';
import 'package:dio/dio.dart';

class LoginController {
  DioClient dioClient = DioClient();

  Future<FetchData> login(String url, Map<String, dynamic> data) async {
    FetchData fetchData = FetchData(error: "", data: []);
    try {
      final response = await dioClient.post(
        url,
        data: data,
      );
      logd(response);
      if (response.statusCode == 200) {
        logd("Okayyyyyyyyyyyyyy");
        fetchData.data = response.data;
      } else {
        logd("Nooooooooooooooooo");
        fetchData.error = "An error";
      }
      //return apiResponse;
    } on DioException catch (e) {
      logd(e);
      logd("An error");
      fetchData.error = "An error";
    }

    return fetchData;
  }
}
