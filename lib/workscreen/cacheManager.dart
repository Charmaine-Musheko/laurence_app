// import 'package:flutter_cache_manager/flutter_cache_manager.dart';
// import 'package:http/http.dart' as http;
// import 'dart:io';
// import 'package:path_provider/path_provider.dart';
// import 'package:path/path.dart' as path;
//
// // Custom Implementation of CacheManager
// // by extending the BaseCacheManager abstract class
// class CustomCacheManager {
//   static const key = 'customCacheKey';
//   static CacheManager instance = CacheManager(
//     Config(
//       key,
//       stalePeriod: const Duration(days: 7),
//       maxNrOfCacheObjects: 20,
//       repo: JsonCacheInfoRepository(databaseName: key),
//       fileSystem: IOFileSystem(key),
//       fileService: HttpFileService(),
//      ),
//   );
// }