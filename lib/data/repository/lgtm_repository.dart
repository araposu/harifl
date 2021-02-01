import '../model/images.dart';
import '../model/result.dart';

// ignore: one_member_abstracts
abstract class LgtmRepository {
  Future<Result<Images>> getRecentImages();
  Future<Result<Images>> getRandomImages();
}
