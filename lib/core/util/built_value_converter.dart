import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';

import 'serializers.dart';

class BuiltValueConverter extends JsonConverter {
  final Type errorType;

  BuiltValueConverter({this.errorType});

  @override
  Request convertRequest(Request request) {
    return super.convertRequest(
      request.copyWith(
        body: serializers.serializeWith(
          serializers.serializerForType(request.body.runtimeType),
          request.body,
        ),
      ),
    );
  }

  @override
  Response<BodyType> convertResponse<BodyType, SingleItemType>(
    Response response,
  ) {
    final Response dynamicResponse = super.convertResponse(response);

    final BodyType customBody =
        convertToCustomObject<SingleItemType>(dynamicResponse.body);

    return dynamicResponse.copyWith<BodyType>(body: customBody);
  }

  @override
  Response convertError<BodyType, SingleItemType>(Response response) {
    final dynamicResponse = super.convertResponse(response);
    var body;
    if (errorType != null) {
      final serializer = serializers.serializerForType(errorType);
      body = serializers.deserializeWith(serializer, dynamicResponse.body);
    }
    body ??= dynamicResponse.body;
    return dynamicResponse.copyWith(body: body);
  }

  dynamic convertToCustomObject<SingleItemType>(dynamic element) {
    if (element is SingleItemType) return element;

    if (element is List)
      return deserializeListOf<SingleItemType>(element);
    else
      return _deserialize<SingleItemType>(element);
  }

  BuiltList<SingleItemType> deserializeListOf<SingleItemType>(
    List dynamicList,
  ) {
    return BuiltList<SingleItemType>(
      dynamicList.map((element) => _deserialize<SingleItemType>(element)),
    );
  }

  SingleItemType _deserialize<SingleItemType>(
    Map<String, dynamic> value,
  ) {
    return serializers.deserializeWith(
      serializers.serializerForType(SingleItemType),
      value,
    );
  }
}
