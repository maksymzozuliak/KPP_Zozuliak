import 'dart:ffi';

import 'package:adopt_a_pet/api/base/http_method.dart';
import 'package:adopt_a_pet/api/base/request_service.dart';
import 'package:adopt_a_pet/api/dto/pet_dto.dart';
import 'package:adopt_a_pet/api/services/base/pet_list_api_service_base.dart';
import 'package:adopt_a_pet/constance.dart';
import 'package:adopt_a_pet/exceptions/api_exception.dart';

/// An implementation of the [PetListApiServiceBase] interface.
class PetListApiService implements PetListApiServiceBase {
  /// The request service used to make HTTP requests.
  final RequestService _requestService;

  /// Constructs a [PetListApiService] instance.
  ///
  /// [_requestService]: The [RequestService] request service used to make HTTP requests.
  PetListApiService(this._requestService);

  /// Sends HTTP request to get [PetDto] list.
  ///
  /// [type]: Type of the pet to filter.
  /// [page]: Current page of pagination.
  /// [name]: Name of the pat to filter. Might be only part of the name.
  ///
  /// Returns List of [PetDto] if the request fas successful and empty list if it fails.
  @override
  Future<List<PetDto>> getPetList(String? type, int page, String? name) async {
    try {

      /// [url] to send HTTP request.
      const url = '${Constants.petfinderUrl}animals/';

      /// [headers] for HTTP request.
      final headers = {
        "Authorization": "Bearer ${Constants.token}",
      };

      /// [queryParameters] for HTTP request.
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

      /// [response] of HTTP request.
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
      return [];
    }
  }
}
