import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:toktik/config/helpers/human_formats.dart';
import 'package:toktik/domain/entities/videos_post.dart';

class VideoButtons extends StatelessWidget {

  final VideoPost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(value: video.likes, iconData: Icons.favorite, color: Colors.red),
        const SizedBox(height: 10,),
        _CustomIconButton(value: video.views, iconData: Icons.remove_red_eye),
        const SizedBox(height: 10,),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5),
          child: const _CustomIconButton(iconData: Icons.filter_tilt_shift)),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {

  final int value;
  final IconData iconData;
  final Color color;

  const _CustomIconButton({
    super.key,
    this.value = 0,
    required this.iconData,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(onPressed: () {}, icon: Icon(iconData, color: color, size: 35,)),

        if(value > 0)
        Text(HumanFormats.humanReadableNumber(value.toDouble()))
      ],
    );
  }
}