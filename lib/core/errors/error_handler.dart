
// // ============================================================================
// // 4. FIXED error_handler.dart - Complete implementation
// // ============================================================================

// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:pokedex_3d/core/errors/error.dart';
// import 'package:pokedex_3d/core/errors/error_mapper.dart';
// import 'package:pokedex_3d/core/result.dart';

// class ErrorHandler {
//   /// Calls an API and handles all errors consistently
//   static Future<Result<T>> callApi<T>({
//     required Future<http.Response> Function() api,
//     required T Function(dynamic) parse,
//   }) async {
//     try {
//       // Make the API call
//       final response = await api();

//       // Handle successful responses (2xx)
//       if (response.statusCode == 200 ) {
//         try {
      
//           final parsed = parse(response.body);
//           return Result.ok(parsed);
//         } catch (e, st) {
//           return Result.error(
//             ParsingFailure(
//               message: 'Failed to parse response: $e',
//               details: e,
//               stackTrace: st,
//             ),
//           );
//         }
//       }

//       // Handle error status codes
//       return Result.error(
//         ErrorMapper.mapHttpStatus(
//           response.statusCode,
//           response.body,
//         ),
//       );
//     } catch (e, st) {
//       // Handle network/connectivity errors
//       return Result.error(ErrorMapper.mapException(e, st));
//     }
//   }

//   /// Helper method for GET requests
//   static Future<Result<T>> get<T>({
//     required String url,
//     required T Function(dynamic) parse,
//     Map<String, String>? headers,
//   }) async {
//     return callApi<T>(
//       api: () => http.get(Uri.parse(url), headers: headers),
//       parse: parse,
//     );
//   }

//   /// Helper method for POST requests
//   static Future<Result<T>> post<T>({
//     required String url,
//     required T Function(dynamic) parse,
//     Map<String, String>? headers,
//     dynamic body,
//   }) async {
//     return callApi<T>(
//       api: () => http.post(
//         Uri.parse(url),
//         headers: headers,
//         body: body != null ? jsonEncode(body) : null,
//       ),
//       parse: parse,
//     );
//   }
// }