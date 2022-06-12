import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:storybook/model/story_mixin.dart';
import 'package:storybook/utils/extensions.dart';

class StoryModel extends StatelessWidget with StoryMixin {
  final String code;

  StoryModel({Key? key, required String name, required this.code})
      : super(key: key) {
    super.name = name;
    super.map.value = {}..addEntries(
        filterProperties().map(
          (key) => MapEntry(key ?? '', null),
        ),
      );
  }

  @override
  Widget build(BuildContext context) => Obx(() => this);
}
