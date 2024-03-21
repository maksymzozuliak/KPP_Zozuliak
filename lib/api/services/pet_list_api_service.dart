import 'dart:ffi';

import 'package:adopt_a_pet/api/base/http_method.dart';
import 'package:adopt_a_pet/api/base/request_service.dart';
import 'package:adopt_a_pet/api/dto/pet_dto.dart';
import 'package:adopt_a_pet/api/services/base/pet_list_api_service_base.dart';
import 'package:adopt_a_pet/constance.dart';
import 'package:adopt_a_pet/exceptions/api_exception.dart';

class PetListApiService implements PetListApiServiceBase {
  RequestService _requestService;

  PetListApiService(this._requestService);

  @override
  Future<List<PetDto>> getPetList(String? type, int page, String? name) async {
    try {
      const url = '${Constants.petfinderUrl}animals/';
      final headers = {
        "Authorization": "Bearer ${Constants.token}",
      };
      final queryParameters = {
        "page": page.toString(),
        "sort": "random",
      };
      if (type != null) {
        queryParameters["type"] = type;
      }
      if (name != null) {
        queryParameters["name"] = name;
      }

      final response = await _requestService.sendAsync(
        method: HttpMethod.Get,
        url: url,
        headers: headers,
        queryParameters: queryParameters,
      );

      List<PetDto> petList = [];

      for (final json in response["animals"]) {
        final pet = PetDto.fromJson(json);
        petList.add(pet);
      }

      return petList;
    } on ApiException catch (ex) {
      print(ex.message);
      return [];
    }
  }
}