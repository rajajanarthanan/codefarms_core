import 'dart:io';
import 'package:codefarms_core/di/getit.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class FileService {
  FileService();

  Future<Tuple2<bool, String>> uploadFile({
    required String url,
    required File file,
    String? fieldName,
    Map<String, dynamic>? data,
    Options? options,
  }) async {
    try {
      final fileName = file.path.split(Platform.pathSeparator).last;
      final formData = FormData.fromMap({
        if (data != null) ...data,
        fieldName ?? 'file': await MultipartFile.fromFile(
          file.path,
          filename: fileName,
        ),
      });
      final res = await getIt<Dio>().post(
        url,
        data: formData,
        options: options,
      );
      if (res.statusCode != 200) {
        return Tuple2(false, res.data["message"] ?? res.statusMessage ?? "");
      } else {
        return Tuple2(true, res.data["url"]);
      }
    } catch (e) {
      return Tuple2(false, e.toString());
    }
  }

  Future<Tuple2<bool, String>> downloadFile({
    required String url,
    required String savePath,
    ProgressCallback? onReceiveProgress,
    Options? options,
  }) async {
    try {
      final res = await getIt<Dio>().download(
        url,
        savePath,
        onReceiveProgress: onReceiveProgress,
        options: options,
      );
      if (res.statusCode != 200) {
        return Tuple2(
          false,
          res.data["message"] ??
              res.statusMessage ??
              "Something Went Wrong, Code: ${res.statusCode}",
        );
      } else {
        return Tuple2(true, "File Downloaded Successfully");
      }
    } catch (e) {
      return Tuple2(false, e.toString());
    }
  }
}
