// // GENERATED CODE - DO NOT MODIFY BY HAND

// part of 'simple_retrofit.dart';

// // **************************************************************************
// // RetrofitGenerator
// // **************************************************************************

// // ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

// class _ApiManager implements ApiManager {
//   _ApiManager(
//     this._dio, {
//     this.baseUrl,
//   }) {
//     baseUrl ??= 'https://jsonplaceholder.typicode.com';
//   }

//   final Dio _dio;

//   String? baseUrl;

//   @override
//   Future<AutoApi> getUSers() async {
//     const _extra = <String, dynamic>{};
//     final queryParameters = <String, dynamic>{};
//     final _headers = <String, dynamic>{};
//     final _data = <String, dynamic>{};
//     final _result =
//         await _dio.fetch<Map<String, dynamic>>(_setStreamType<AutoApi>(Options(
//       method: 'GET',
//       headers: _headers,
//       extra: _extra,
//     )
//             .compose(
//               _dio.options,
//               '/users',
//               queryParameters: queryParameters,
//               data: _data,
//             )
//             .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
//     final value = AutoApi.fromMap(_result.data!);
//     return value;
//   }

//   RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
//     if (T != dynamic &&
//         !(requestOptions.responseType == ResponseType.bytes ||
//             requestOptions.responseType == ResponseType.stream)) {
//       if (T == String) {
//         requestOptions.responseType = ResponseType.plain;
//       } else {
//         requestOptions.responseType = ResponseType.json;
//       }
//     }
//     return requestOptions;
//   }
// }