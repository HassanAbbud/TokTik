import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/videos_post.dart';
import 'package:toktik/presentation/widgets/video/full_screen_player.dart';
import 'package:toktik/presentation/widgets/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos;

  const VideoScrollableView({
    super.key,
    required this.videos
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final VideoPost currentVideo = videos[index];

        return Stack(
          children: [
            SizedBox.expand(
              child: FullScreenPlayer(videoUrl: currentVideo.videoUrl, caption: currentVideo.caption),
            ),
            Positioned(
              bottom: 40,
              right: 20,
              child: VideoButtons(video: currentVideo),
            )
          ],
        );
      }, 
    );
  }
}

