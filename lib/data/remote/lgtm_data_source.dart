import '../model/images.dart';

// ignore: one_member_abstracts
abstract class LgtmDataSource {
  Future<Images> getRecentImages();
  Future<Images> getRandomImages();
}
