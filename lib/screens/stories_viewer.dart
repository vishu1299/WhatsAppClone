import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:story_view/story_controller.dart';
import 'package:story_view/story_view.dart';

class StoriesViewer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List <StoryItem> storyItems = [
      StoryItem.text('HI', Colors.grey)
    ];
    return StoryView(
      storyItems,
      controller: controller,
      inline: false,
      repeat: true,

    );

  }
}
