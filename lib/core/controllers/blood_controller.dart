import 'package:blood4all/core/service/dio_service.dart';
import 'package:blood4all/core/service/parse_result.dart';
import 'package:blood4all/core/utils/app_func.dart';
import 'package:dio/dio.dart';

class BloodController {
  DioClient dioClient = DioClient();

  Future<FetchData> searchBlood(
      int? unite, String bloodgroup, String productType) async {
    FetchData fetchData = FetchData(error: "", data: null);
    try {
      logd(unite);
      logd(bloodgroup);
      logd(productType);

      final response = await dioClient.post(
        'https://blood4all-backend.vercel.app/api/doctor/clj6xupzd0000mk08cbi8hnou',
        data: {
          'nombrePoches': unite,
          'groupeSanguin': bloodgroup,
          'productType': productType
        },
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
