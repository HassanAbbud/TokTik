import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/videos_post.dart';

class DiscoverProvider extends ChangeNotifier{

  bool initialLoading = true;
  List<VideoPost> videos = [];  


  Future<void> loadNextPage() async {
    // TODO: Load videos

    notifyListeners();
  }
}