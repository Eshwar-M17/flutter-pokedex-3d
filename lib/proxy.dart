// import 'dart:io';
// import 'package:pokedex_3d/core/result.dart';
// import 'package:pokedex_3d/data/repository/model_repository.dart';

// class LocalHttpServer {
//   HttpServer? _server;
//   final int port;
//   final ModelRepository _repository;

//   LocalHttpServer({this.port = 8080, required ModelRepository modelRepository})
//     : _repository = modelRepository;

//   HttpServer? get server => _server;

//   Future<void> startServer() async {
//     _server = await HttpServer.bind(InternetAddress.loopbackIPv4, port);

//     _server?.listen((HttpRequest request) async {
//       final modelUrl = Uri.decodeFull(request.uri.path.substring(1));

//       // Add CORS headers early
//       request.response.headers.add('Access-Control-Allow-Origin', '*');
//       request.response.headers.add(
//         'Access-Control-Allow-Methods',
//         'GET, POST, OPTIONS',
//       );
//       request.response.headers.add(
//         'Access-Control-Allow-Headers',
//         'Origin, Content-Type, Accept',
//       );

//       // Handle preflight OPTIONS request
//       if (request.method == 'OPTIONS') {
//         request.response.statusCode = HttpStatus.noContent;
//         await request.response.close();
//         return;
//       }

//       if (modelUrl.startsWith('http')) {
//         final response = await _repository.getModelFile(modelUrl);

//         switch (response) {
//           case Ok<File>():
//             final path = response.value.path;

//             // Set proper content-type
//             if (path.endsWith('.glb')) {
//               request.response.headers.contentType = ContentType(
//                 'model',
//                 'gltf-binary',
//               );
//             } else if (path.endsWith('.gltf')) {
//               request.response.headers.contentType = ContentType(
//                 'model',
//                 'gltf+json',
//               );
//             } else if (path.endsWith('.bin')) {
//               request.response.headers.contentType = ContentType(
//                 'application',
//                 'octet-stream',
//               );
//             } else {
//               request.response.headers.contentType = ContentType.binary;
//             }

//             await request.response.addStream(response.value.openRead());
//             await request.response.close();
//             break;

//           case Error<File>():

//             request.response.statusCode = HttpStatus.internalServerError;
//             request.response.write('Failed to fetch model: ${response.error}');
//             await request.response.close();
//             break;
//         }
//       } else {
//         request.response.statusCode = HttpStatus.badRequest;
//         request.response.write('Invalid model URL: $modelUrl');
//         await request.response.close();
//       }
//     });
//   }

//   Future<void> stopServer() async {
//     await _server?.close(force: true);
//   }
// }
