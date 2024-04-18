import 'dart:ffi';

import 'package:adopt_a_pet/api/base/http_method.dart';
import 'package:adopt_a_pet/api/base/request_service.dart';
import 'package:adopt_a_pet/api/dto/organization_dto.dart';
import 'package:adopt_a_pet/api/dto/pet_dto.dart';
import 'package:adopt_a_pet/api/services/base/oraganization_api_service_base.dart';
import 'package:adopt_a_pet/api/services/base/pet_list_api_service_base.dart';
import 'package:adopt_a_pet/constance.dart';
import 'package:adopt_a_pet/exceptions/api_exception.dart';

/// An implementation of the [OrganizationApiServiceBase] interface.
class OrganizationApiService implements OrganizationApiServiceBase {
  /// The request service used to make HTTP requests.
  final RequestService _requestService;

  /// Constructs an [OrganizationApiService] instance.
  ///
  /// [_requestService]: The [RequestService] request service used to make HTTP requests.
  OrganizationApiService(this._requestService);


  /// Sends HTTP request to get [OrganizationDto] info with [id]
  ///
  /// [id]: id of organization
  ///
  /// Returns [OrganizationDto] if the request fas successful and [null] if it fails
  @override
  Future<OrganizationDto?> getOrganization(String id) async {
    try {

      /// [url] to send HTTP request.
      final url = '${Constants.petfinderUrl}organizations/$id';

      /// [headers] for HTTP request.
      final headers = {
        "Authorization": "Bearer ${Constants.token}",
      };

      /// [response] of HTTP request.
      final response = await _requestService.sendAsync(
        method: HttpMethod.Get,
        url: url,
        headers: headers,
      );
      return OrganizationDto.fromJson(response["organization"]);

    } on ApiException catch (ex) {
      return null;
    }
  }
}
