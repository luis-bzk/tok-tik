import 'package:tok_tik/domain/datasources/video_posts_datasources.dart';
import 'package:tok_tik/domain/entities/video_post.dart';
import 'package:tok_tik/domain/repositories/video_post_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  final VideoPostDataSource videosDataSource;

  VideoPostsRepositoryImpl({required this.videosDataSource});

  @override
  Future<List<VideoPost>> getFavoritesVideosByUsers(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDataSource.getTrendingVideosByPage(page);
  }
}
