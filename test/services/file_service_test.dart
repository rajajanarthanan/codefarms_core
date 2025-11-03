// import 'dart:io';
// import 'package:codefarms_core/di/getit.dart';
// import 'package:codefarms_core/di/injection.dart';
// import 'package:codefarms_core/services/file_service.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';

// class MockDio extends Mock implements Dio {}

// class MockFile extends Mock implements File {}

// void main() {
//   late FileService fileService;
//   late MockDio mockDio;
//   late String mockUrl;

//   setUp(() {
//     configureDependencies();
//     mockDio = MockDio();
//     // Override getIt<Dio>() to return our mock
//     getIt.unregister<Dio>();
//     getIt.registerSingleton<Dio>(mockDio);
//     fileService = FileService();
//     mockUrl = "https://example.com/upload";
//   });

//   group('FileService.uploadFile', () {
//     test('returns success when statusCode is 200', () async {
//       final mockFile = MockFile();
//       when(mockFile.path).thenReturn('/tmp/test.txt');
//       when(
//         mockDio.post(
//           mockUrl,
//           data: anyNamed('data'),
//           options: anyNamed('options'),
//         ),
//       ).thenAnswer(
//         (_) async => Response(
//           statusCode: 200,
//           data: {},
//           requestOptions: RequestOptions(path: ''),
//         ),
//       );

//       final result = await fileService.uploadFile(
//         url: 'http://example.com/upload',
//         file: mockFile,
//       );
//       expect(result.value1, true);
//       expect(result.value2, contains('File Uploaded Successfully'));
//     });
//   });
// }
