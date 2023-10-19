import 'package:get/get.dart';
import 'package:social_feed/data/repo/feed_repo.dart';

class FeedController extends GetxController implements GetxService {
  final FeedRepo feedRepo;
  FeedController({required this.feedRepo});


}