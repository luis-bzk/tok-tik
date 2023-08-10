import 'package:flutter/material.dart';
import 'package:tok_tik/domain/entities/video_post.dart';
import 'package:tok_tik/infraestructure/models/local_video_model.dart';
import 'package:tok_tik/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
// TODO: Repository, Data Source

  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity())
        .toList();

    // TODO cargar videos

    videos.addAll(newVideos);
    initialLoading = false;

    notifyListeners();
  }
}
