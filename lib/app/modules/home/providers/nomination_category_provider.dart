import 'package:get/get.dart';

import '../nomination_category_model.dart';

class NominationCategoryProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return NominationCategory.fromJson(map);
      if (map is List)
        return map.map((item) => NominationCategory.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<NominationCategory?> getNominationCategory(int id) async {
    final response = await get('nominationcategory/$id');
    return response.body;
  }

  Future<Response<NominationCategory>> postNominationCategory(
          NominationCategory nominationcategory) async =>
      await post('nominationcategory', nominationcategory);
  Future<Response> deleteNominationCategory(int id) async =>
      await delete('nominationcategory/$id');
}
